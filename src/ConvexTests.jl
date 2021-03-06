module ConvexTests

export do_tests

using TableTestSets
using Convex
using Convex.ProblemDepot: foreach_problem, PROBLEMS
using Test, Pkg, InteractiveUtils, Dates
using TimerOutputs

const DOCS_SRC = Ref(joinpath(@__DIR__, "..", "docs", "src"))

# To compile some things
function dummy_problem(opt; T = Float64)
    x = Variable(3)
    p = minimize(2*x[2] + x[1] - x[3], [x >= 1]; numeric_type = T)
    solve!(p, opt)
end

# Modified from Convex.jl's ProblemDepot code to add TimerOutputs logging
function _run_tests( handle_problem!::Function, 
                    problems::Union{Nothing, Vector{String}, Vector{Regex}} = nothing; 
                    exclude::Vector{Regex} = Regex[], T=Float64, atol=1e-3, rtol=0.0, to)
    exclude = copy(exclude) # rebind the local variable
    push!(exclude, r"benchmark")
    for class in keys(PROBLEMS)
        any(occursin.(exclude, Ref(class))) && continue
        @timeit to "$class" begin
            @testset "$class" begin
                foreach_problem(class, problems; exclude=exclude) do name, problem_func
                    @timeit to "$name" begin
                        @testset "$name" begin
                            problem_func(handle_problem!, Val(true), atol, rtol, T)
                        end
                    end
                end
            end
        end
    end
end

function formatted_seconds(t)
    if t < 1
        input = Dates.Millisecond(ceil(Int, t*1000))
    else
        input = Dates.Second(ceil(Int, t))
    end
    Dates.CompoundPeriod(input) |> canonicalize
end

function do_tests(name, opt; variant="", first = true, last = true, description = "",T=Float64, exclude = Regex[], kwargs...)
    if first
        t1 = @elapsed dummy_problem(opt; T=T)
        t2 = @elapsed dummy_problem(opt; T=T)
        compilation_time = formatted_seconds(t1-t2)
    end

    to = TimerOutput()
    results, t = @timed begin
        @testset TableTestSet "$name tests" begin
            _run_tests(; to=to, T=T, exclude=exclude, kwargs...) do p
                solve!(p, opt)
            end
        end
    end
    duration = formatted_seconds(t)
    filename = joinpath(DOCS_SRC[], "$(name).md")

    open(filename, write=true, append=!first) do io
        if first
            println(io, """
            Table of contents:

            ```@contents
            Pages = ["$(name).md"]
            Depth = 4
            ```
            """)
            println(io)
            println(io, "Compilation warmup gives an estimate of $(compilation_time) of compilation time.")
            println(io)
        end

        println(io, "## $name $variant")

        datestr = Dates.format(Dates.now(Dates.UTC), "U d, Y at HH:MM")

        println(io, "These tests were run on $(datestr) (UTC).")
        println(io)
        if !isempty(description)
            println(io, description)
        end
        println(io)
        if !isempty(exclude)
            println(io, "Excluded problems and classes of problems:")
            println(io, "```julia")
            println(io, exclude)
            println(io, "```")
        else
            println(io, "No problems excluded.")
        end
        println(io)
        println(io, "### Tests")
        println(io)
        println(io, "Tests took $(duration) to run (after warmup).")
        println(io)
        println(io, "```@raw html")
        html_table(io, results; standalone = false)
        println(io, "```")
        println(io)
        println(io, "### Errors")
        println(io)
        println(io, "```julia")
        TableTestSets.print_test_errors(io, results)
        println(io, "```")
        println(io)
        println(io)
        println(io, "### Timing information")
        println(io, "```julia")
        print_timer(io, to)
        println(io)
        println(io, "```")
        println(io)
        if last
            println(io, "## Version information")
            println(io, "`versioninfo()`:")
            println(io, "```julia")
            versioninfo(io)
            println(io, "```")
            println(io)
            println(io, "Manifest:")
            println(io, "```julia")
            redirect_stdout(io) do
                Pkg.status(;mode = Pkg.PKGMODE_MANIFEST)
            end
            println(io, "```")
        end

    end
    nothing
end

end # module
