Table of contents:

```@contents
Pages = ["ECOS.md"]
Depth = 4
```


Compilation warmup gives an estimate of 22 seconds of compilation time.

## ECOS 
These tests were run on March 4, 2020 at 19:13 (UTC).


Excluded problems and classes of problems:
```julia
Regex[r"mip", r"sdp"]
```

### Tests

Tests took 1 minute, 4 seconds to run (after warmup).

```@raw html
<table>
<tr class="header">
<td style="text-align:left;border-right: solid 2px;">testset</td>
<td style="text-align:center;">pass</td>
<td style="text-align:center;">fail</td>
<td style="text-align:center;">error</td>
<td style="text-align:center;">broken</td>
<td style="text-align:center;">total</td>
</tr>
<tr><td style="text-align:left;border-right: solid 2px;">ECOS tests</td>
<td style="text-align:center;color:green;">353</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">353</td>
</tr></table>
```

### Errors

```julia
```


### Timing information
```julia
 ──────────────────────────────────────────────────────────────────────────────
                                       Time                   Allocations      
                               ──────────────────────   ───────────────────────
       Tot / % measured:            63.4s / 99.1%           6.48GiB / 99.5%    

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 affine                     1    25.7s  41.0%   25.7s   2.72GiB  42.2%  2.72GiB
   affine_Partial_t...      1    2.62s  4.17%   2.62s    279MiB  4.24%   279MiB
   affine_permutedd...      1    2.49s  3.96%   2.49s    321MiB  4.87%   321MiB
   affine_dot_multi...      1    1.99s  3.18%   1.99s    146MiB  2.22%   146MiB
   affine_multiply_...      1    1.95s  3.10%   1.95s    211MiB  3.20%   211MiB
   affine_hcat_atom         1    1.86s  2.96%   1.86s    182MiB  2.75%   182MiB
   affine_transpose...      1    1.80s  2.86%   1.80s    172MiB  2.61%   172MiB
   affine_vcat_atom         1    1.15s  1.83%   1.15s    100MiB  1.51%   100MiB
   affine_Diagonal_...      1    1.07s  1.71%   1.07s    108MiB  1.64%   108MiB
   affine_add_atom          1    1.03s  1.64%   1.03s   67.7MiB  1.03%  67.7MiB
   affine_satisfy_p...      1    1.01s  1.61%   1.01s   57.3MiB  0.87%  57.3MiB
   affine_conv_atom         1    815ms  1.30%   815ms   54.0MiB  0.82%  54.0MiB
   affine_dot_atom          1    570ms  0.91%   570ms   25.6MiB  0.39%  25.6MiB
   affine_index_atom        1    560ms  0.89%   560ms   40.0MiB  0.61%  40.0MiB
   affine_reshape_atom      1    516ms  0.82%   516ms   27.8MiB  0.42%  27.8MiB
   affine_dualvalue         1    399ms  0.64%   399ms   33.0MiB  0.50%  33.0MiB
   affine_sum_atom          1    353ms  0.56%   353ms   31.0MiB  0.47%  31.0MiB
   affine_kron_atom         1    274ms  0.44%   274ms   19.9MiB  0.30%  19.9MiB
   affine_diag_atom         1    137ms  0.22%   137ms   14.2MiB  0.21%  14.2MiB
   affine_dot_atom_...      1   98.9ms  0.16%  98.9ms   4.95MiB  0.08%  4.95MiB
   affine_negate_atom       1   89.8ms  0.14%  89.8ms   3.81MiB  0.06%  3.81MiB
   affine_trace_atom        1   42.9ms  0.07%  42.9ms   2.61MiB  0.04%  2.61MiB
 socp                       1    18.1s  28.9%   18.1s   1.85GiB  28.7%  1.85GiB
   socp_quad_form_atom      1    2.60s  4.14%   2.60s   32.9MiB  0.50%  32.9MiB
   socp_dual_minima...      1    2.24s  3.57%   2.24s    161MiB  2.44%   161MiB
   socp_rational_no...      1    1.43s  2.28%   1.43s    133MiB  2.01%   133MiB
   socp_sum_squares...      1    1.13s  1.81%   1.13s    107MiB  1.63%   107MiB
   socp_inv_pos_atom        1    839ms  1.34%   839ms   68.9MiB  1.04%  68.9MiB
   socp_dual_norm_2...      1    686ms  1.09%   686ms   64.9MiB  0.98%  64.9MiB
   socp_rational_no...      1    616ms  0.98%   616ms   56.6MiB  0.86%  56.6MiB
   socp_quad_over_l...      1    590ms  0.94%   590ms   30.3MiB  0.46%  30.3MiB
   socp_norm_consis...      1    467ms  0.74%   467ms   27.9MiB  0.42%  27.9MiB
   socp_fix_multipl...      1    461ms  0.74%   461ms   32.9MiB  0.50%  32.9MiB
   socp_huber_atom          1    454ms  0.72%   454ms   49.2MiB  0.75%  49.2MiB
   socp_geo_mean_atom       1    347ms  0.55%   347ms   24.2MiB  0.37%  24.2MiB
   socp_dual_froben...      1    321ms  0.51%   321ms   25.5MiB  0.39%  25.5MiB
   socp_fix_and_fre...      1    298ms  0.47%   298ms   30.3MiB  0.46%  30.3MiB
   socp_square_atom         1    298ms  0.47%   298ms   14.3MiB  0.22%  14.3MiB
   socp_rational_no...      1    133ms  0.21%   133ms   9.04MiB  0.14%  9.04MiB
   socp_sqrt_atom           1   47.2ms  0.08%  47.2ms   1.08MiB  0.02%  1.08MiB
 constant                   1    9.83s  15.7%   9.83s   1.01GiB  15.7%  1.01GiB
   constant_fix!_wi...      1    3.43s  5.46%   3.43s    286MiB  4.34%   286MiB
   constant_Issue_166       1    3.31s  5.27%   3.31s    386MiB  5.85%   386MiB
   constant_Issue_228       1    680ms  1.08%   680ms   53.8MiB  0.82%  53.8MiB
   constant_fix!_wi...      1    533ms  0.85%   533ms   44.8MiB  0.68%  44.8MiB
   constant_fix!_an...      1    385ms  0.61%   385ms   43.3MiB  0.66%  43.3MiB
   constant_Test_do...      1    299ms  0.48%   299ms   19.1MiB  0.29%  19.1MiB
 lp                         1    5.59s  8.90%   5.59s    573MiB  8.69%   573MiB
   lp_dotsort_atom          1    977ms  1.56%   977ms   89.8MiB  1.36%  89.8MiB
   lp_sumlargest_atom       1    535ms  0.85%   535ms   48.9MiB  0.74%  48.9MiB
   lp_min_atom              1    535ms  0.85%   535ms   39.1MiB  0.59%  39.1MiB
   lp_max_atom              1    379ms  0.60%   379ms   32.3MiB  0.49%  32.3MiB
   lp_minimum_atom          1    303ms  0.48%   303ms   26.9MiB  0.41%  26.9MiB
   lp_sumsmallest_atom      1    269ms  0.43%   269ms   21.9MiB  0.33%  21.9MiB
   lp_dual_abs_atom         1    255ms  0.41%   255ms   18.5MiB  0.28%  18.5MiB
   lp_neg_atom              1    228ms  0.36%   228ms   11.5MiB  0.17%  11.5MiB
   lp_maximum_atom          1    199ms  0.32%   199ms   12.6MiB  0.19%  12.6MiB
   lp_dual_norm_inf...      1   98.6ms  0.16%  98.6ms   3.81MiB  0.06%  3.81MiB
   lp_pos_atom              1   78.4ms  0.12%  78.4ms   6.24MiB  0.09%  6.24MiB
   lp_dual_norm_1_atom      1   66.6ms  0.11%  66.6ms   3.49MiB  0.05%  3.49MiB
   lp_hinge_loss_atom       1    364μs  0.00%   364μs   49.7KiB  0.00%  49.7KiB
 exp                        1    3.47s  5.54%   3.47s    312MiB  4.73%   312MiB
   exp_log_atom             1    1.37s  2.18%   1.37s    104MiB  1.58%   104MiB
   exp_entropy_atom         1    421ms  0.67%   421ms   37.6MiB  0.57%  37.6MiB
   exp_log_sum_exp_...      1    271ms  0.43%   271ms   23.8MiB  0.36%  23.8MiB
   exp_exp_atom             1    259ms  0.41%   259ms   17.8MiB  0.27%  17.8MiB
   exp_log_perspect...      1    238ms  0.38%   238ms   19.9MiB  0.30%  19.9MiB
   exp_logistic_los...      1    217ms  0.35%   217ms   14.6MiB  0.22%  14.6MiB
   exp_relative_ent...      1   61.8ms  0.10%  61.8ms   5.21MiB  0.08%  5.21MiB
 ──────────────────────────────────────────────────────────────────────────────
```

## Version information
`versioninfo()`:
```julia
Julia Version 1.3.1
Commit 2d5741174c (2019-12-30 21:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
  CPU: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, skylake)
```

Manifest:
```julia
    Status `~/work/ConvexTests.jl/ConvexTests.jl/ECOS/Manifest.toml`
  [1520ce14] AbstractTrees v0.3.2
  [6e4b80f9] BenchmarkTools v0.5.0
  [b99e7846] BinaryProvider v0.5.8
  [523fee87] CodecBzip2 v0.6.0
  [944b1d66] CodecZlib v0.6.0
  [f65535da] Convex v0.13.0
  [cb7cb77b] ConvexTests v0.1.0 [`~/work/ConvexTests.jl/ConvexTests.jl`]
  [9a962f9c] DataAPI v1.1.0
  [e2d170a0] DataValueInterfaces v1.0.0
  [e2685f51] ECOS v0.11.0
  [cd3eb016] HTTP v0.8.12
  [83e8ac13] IniFile v0.5.0
  [82899510] IteratorInterfaceExtensions v1.0.0
  [682c06a0] JSON v0.21.0
  [7d188eb4] JSONSchema v0.2.0
  [b8f27783] MathOptInterface v0.9.12
  [fdba3010] MathProgBase v0.7.8
  [739be429] MbedTLS v1.0.1
  [c8ffd9c3] MbedTLS_jll v2.16.0+1
  [d8a4904e] MutableArithmetics v0.2.7
  [bac558e1] OrderedCollections v1.1.0
  [69de0a69] Parsers v0.3.12
  [f9bf3ced] TableTestSets v0.1.0 #master (https://github.com/ericphanson/TableTestSets.jl)
  [3783bdb8] TableTraits v1.0.0
  [bd369af6] Tables v1.0.3
  [a759f4b9] TimerOutputs v0.5.3
  [3bb67fe8] TranscodingStreams v0.9.5
  [2a0f44e3] Base64 
  [ade2ca70] Dates 
  [8ba89e20] Distributed 
  [b77e0a4c] InteractiveUtils 
  [76f85450] LibGit2 
  [8f399da3] Libdl 
  [37e2e46d] LinearAlgebra 
  [56ddb016] Logging 
  [d6f4376e] Markdown 
  [a63ad114] Mmap 
  [44cfe95a] Pkg 
  [de0858da] Printf 
  [3fa0cd96] REPL 
  [9a3f8284] Random 
  [ea8e919c] SHA 
  [9e88b42a] Serialization 
  [6462fe0b] Sockets 
  [2f01184e] SparseArrays 
  [10745b16] Statistics 
  [8dfed614] Test 
  [cf7118a7] UUIDs 
  [4ec0a83e] Unicode 
```
