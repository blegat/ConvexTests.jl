Table of contents:

```@contents
Pages = ["Tulip.md"]
Depth = 4
```


Compilation warmup gives an estimate of 32 seconds of compilation time.

## Tulip Float64
These tests were run on March 4, 2020 at 19:13 (UTC).

Tests run with default parameters in type `Float64`.

Excluded problems and classes of problems:
```julia
Regex[r"mip", r"exp", r"socp", r"sdp"]
```

### Tests

Tests took 45 seconds to run (after warmup).

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
<tr><td style="text-align:left;border-right: solid 2px;">Tulip tests</td>
<td style="text-align:center;color:green;">229</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">229</td>
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
       Tot / % measured:            44.7s / 98.7%           4.43GiB / 99.3%    

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 affine                     1    27.0s  61.1%   27.0s   2.73GiB  61.9%  2.73GiB
   affine_Partial_t...      1    2.80s  6.35%   2.80s    322MiB  7.15%   322MiB
   affine_permutedd...      1    2.62s  5.94%   2.62s    323MiB  7.16%   323MiB
   affine_hcat_atom         1    2.09s  4.73%   2.09s    181MiB  4.02%   181MiB
   affine_multiply_...      1    2.06s  4.68%   2.06s    211MiB  4.69%   211MiB
   affine_dot_multi...      1    2.04s  4.63%   2.04s    142MiB  3.16%   142MiB
   affine_transpose...      1    1.89s  4.28%   1.89s    170MiB  3.76%   170MiB
   affine_vcat_atom         1    1.19s  2.69%   1.19s    100MiB  2.22%   100MiB
   affine_Diagonal_...      1    1.12s  2.54%   1.12s    107MiB  2.38%   107MiB
   affine_satisfy_p...      1    1.02s  2.32%   1.02s   57.2MiB  1.27%  57.2MiB
   affine_add_atom          1    848ms  1.92%   848ms   57.1MiB  1.27%  57.1MiB
   affine_conv_atom         1    770ms  1.75%   770ms   53.0MiB  1.18%  53.0MiB
   affine_index_atom        1    611ms  1.39%   611ms   40.8MiB  0.91%  40.8MiB
   affine_reshape_atom      1    539ms  1.22%   539ms   28.2MiB  0.63%  28.2MiB
   affine_dot_atom          1    500ms  1.13%   500ms   19.2MiB  0.42%  19.2MiB
   affine_dualvalue         1    420ms  0.95%   420ms   33.1MiB  0.74%  33.1MiB
   affine_sum_atom          1    382ms  0.87%   382ms   31.2MiB  0.69%  31.2MiB
   affine_kron_atom         1    288ms  0.65%   288ms   19.9MiB  0.44%  19.9MiB
   affine_diag_atom         1    126ms  0.29%   126ms   14.5MiB  0.32%  14.5MiB
   affine_dot_atom_...      1    100ms  0.23%   100ms   4.97MiB  0.11%  4.97MiB
   affine_negate_atom       1   89.4ms  0.20%  89.4ms   3.79MiB  0.08%  3.79MiB
   affine_trace_atom        1   43.5ms  0.10%  43.5ms   2.63MiB  0.06%  2.63MiB
 constant                   1    9.94s  22.5%   9.94s   0.97GiB  22.0%  0.97GiB
   constant_Issue_166       1    3.45s  7.83%   3.45s    375MiB  8.32%   375MiB
   constant_fix!_wi...      1    3.22s  7.30%   3.22s    262MiB  5.81%   262MiB
   constant_Issue_228       1    685ms  1.55%   685ms   53.7MiB  1.19%  53.7MiB
   constant_fix!_wi...      1    534ms  1.21%   534ms   44.5MiB  0.99%  44.5MiB
   constant_fix!_an...      1    422ms  0.96%   422ms   42.9MiB  0.95%  42.9MiB
   constant_Test_do...      1    332ms  0.75%   332ms   19.0MiB  0.42%  19.0MiB
 lp                         1    7.20s  16.3%   7.20s    724MiB  16.1%   724MiB
   lp_dotsort_atom          1    1.23s  2.78%   1.23s    109MiB  2.42%   109MiB
   lp_dual_abs_atom         1    693ms  1.57%   693ms   61.2MiB  1.36%  61.2MiB
   lp_min_atom              1    591ms  1.34%   591ms   47.6MiB  1.06%  47.6MiB
   lp_sumlargest_atom       1    579ms  1.31%   579ms   51.1MiB  1.13%  51.1MiB
   lp_sumsmallest_atom      1    482ms  1.09%   482ms   46.9MiB  1.04%  46.9MiB
   lp_max_atom              1    452ms  1.03%   452ms   42.6MiB  0.95%  42.6MiB
   lp_minimum_atom          1    346ms  0.78%   346ms   29.8MiB  0.66%  29.8MiB
   lp_dual_norm_inf...      1    332ms  0.75%   332ms   22.9MiB  0.51%  22.9MiB
   lp_neg_atom              1    216ms  0.49%   216ms   11.7MiB  0.26%  11.7MiB
   lp_maximum_atom          1    214ms  0.48%   214ms   12.8MiB  0.28%  12.8MiB
   lp_pos_atom              1    117ms  0.26%   117ms   6.41MiB  0.14%  6.41MiB
   lp_dual_norm_1_atom      1   74.7ms  0.17%  74.7ms   3.64MiB  0.08%  3.64MiB
   lp_hinge_loss_atom       1    248μs  0.00%   248μs   49.7KiB  0.00%  49.7KiB
 ──────────────────────────────────────────────────────────────────────────────
```

## Tulip BigFloat
These tests were run on March 4, 2020 at 19:14 (UTC).

Tests run with default parameters in type `BigFloat`.

Excluded problems and classes of problems:
```julia
Regex[r"mip", r"exp", r"socp", r"sdp"]
```

### Tests

Tests took 48 seconds to run (after warmup).

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
<tr><td style="text-align:left;border-right: solid 2px;">Tulip tests</td>
<td style="text-align:center;color:green;">229</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">229</td>
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
       Tot / % measured:            47.0s / 100%            6.80GiB / 100%     

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 constant                   1    28.9s  61.5%   28.9s   2.69GiB  39.5%  2.69GiB
   constant_Issue_166       1    24.4s  51.9%   24.4s   2.29GiB  33.7%  2.29GiB
   constant_fix!_wi...      1    1.95s  4.14%   1.95s    134MiB  1.92%   134MiB
   constant_fix!_wi...      1    1.67s  3.54%   1.67s    183MiB  2.63%   183MiB
   constant_fix!_an...      1    153ms  0.32%   153ms   19.0MiB  0.27%  19.0MiB
   constant_Issue_228       1    138ms  0.29%   138ms   13.6MiB  0.20%  13.6MiB
   constant_Test_do...      1   87.3ms  0.19%  87.3ms   9.93MiB  0.14%  9.93MiB
 affine                     1    12.5s  26.5%   12.5s   2.64GiB  38.8%  2.64GiB
   affine_Partial_t...      1    2.80s  5.95%   2.80s   1.52GiB  22.4%  1.52GiB
   affine_transpose...      1    1.46s  3.11%   1.46s    123MiB  1.76%   123MiB
   affine_dot_multi...      1    825ms  1.76%   825ms   95.2MiB  1.37%  95.2MiB
   affine_vcat_atom         1    825ms  1.75%   825ms   91.3MiB  1.31%  91.3MiB
   affine_Diagonal_...      1    648ms  1.38%   648ms   78.5MiB  1.13%  78.5MiB
   affine_sum_atom          1    518ms  1.10%   518ms   67.6MiB  0.97%  67.6MiB
   affine_index_atom        1    479ms  1.02%   479ms   77.2MiB  1.11%  77.2MiB
   affine_multiply_...      1    453ms  0.96%   453ms   56.6MiB  0.81%  56.6MiB
   affine_reshape_atom      1    428ms  0.91%   428ms   52.2MiB  0.75%  52.2MiB
   affine_hcat_atom         1    415ms  0.88%   415ms   65.7MiB  0.94%  65.7MiB
   affine_dualvalue         1    354ms  0.75%   354ms   38.6MiB  0.55%  38.6MiB
   affine_add_atom          1    242ms  0.51%   242ms   27.3MiB  0.39%  27.3MiB
   affine_conv_atom         1    210ms  0.45%   210ms   19.9MiB  0.29%  19.9MiB
   affine_diag_atom         1    168ms  0.36%   168ms   30.8MiB  0.44%  30.8MiB
   affine_dot_atom_...      1    150ms  0.32%   150ms   18.7MiB  0.27%  18.7MiB
   affine_dot_atom          1    147ms  0.31%   147ms   16.4MiB  0.24%  16.4MiB
   affine_permutedd...      1    118ms  0.25%   118ms   6.25MiB  0.09%  6.25MiB
   affine_satisfy_p...      1    105ms  0.22%   105ms   13.0MiB  0.19%  13.0MiB
   affine_negate_atom       1   54.2ms  0.12%  54.2ms   4.24MiB  0.06%  4.24MiB
   affine_trace_atom        1   42.1ms  0.09%  42.1ms   6.32MiB  0.09%  6.32MiB
   affine_kron_atom         1   33.0ms  0.07%  33.0ms   3.17MiB  0.05%  3.17MiB
 lp                         1    5.66s  12.0%   5.66s   1.48GiB  21.7%  1.48GiB
   lp_min_atom              1    885ms  1.88%   885ms    383MiB  5.49%   383MiB
   lp_max_atom              1    880ms  1.87%   880ms    429MiB  6.16%   429MiB
   lp_minimum_atom          1    500ms  1.06%   500ms    137MiB  1.96%   137MiB
   lp_sumlargest_atom       1    483ms  1.03%   483ms   80.8MiB  1.16%  80.8MiB
   lp_dotsort_atom          1    440ms  0.94%   440ms   83.2MiB  1.19%  83.2MiB
   lp_dual_abs_atom         1    294ms  0.63%   294ms   36.7MiB  0.53%  36.7MiB
   lp_sumsmallest_atom      1    274ms  0.58%   274ms   98.2MiB  1.41%  98.2MiB
   lp_dual_norm_inf...      1    222ms  0.47%   222ms   24.0MiB  0.34%  24.0MiB
   lp_maximum_atom          1    138ms  0.29%   138ms   25.9MiB  0.37%  25.9MiB
   lp_neg_atom              1    134ms  0.28%   134ms   19.2MiB  0.28%  19.2MiB
   lp_pos_atom              1   92.7ms  0.20%  92.7ms   14.1MiB  0.20%  14.1MiB
   lp_dual_norm_1_atom      1   70.2ms  0.15%  70.2ms   11.5MiB  0.17%  11.5MiB
   lp_hinge_loss_atom       1    282μs  0.00%   282μs   49.7KiB  0.00%  49.7KiB
 ──────────────────────────────────────────────────────────────────────────────
```

## Version information
`versioninfo()`:
```julia
Julia Version 1.3.1
Commit 2d5741174c (2019-12-30 21:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
  CPU: Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, broadwell)
```

Manifest:
```julia
    Status `~/work/ConvexTests.jl/ConvexTests.jl/Tulip/Manifest.toml`
  [14f7f29c] AMD v0.3.1
  [1520ce14] AbstractTrees v0.3.2
  [6e4b80f9] BenchmarkTools v0.5.0
  [b99e7846] BinaryProvider v0.5.8
  [523fee87] CodecBzip2 v0.6.0
  [944b1d66] CodecZlib v0.6.0
  [f65535da] Convex v0.13.0
  [cb7cb77b] ConvexTests v0.1.0 [`~/work/ConvexTests.jl/ConvexTests.jl`]
  [9a962f9c] DataAPI v1.1.0
  [e2d170a0] DataValueInterfaces v1.0.0
  [cd3eb016] HTTP v0.8.12
  [83e8ac13] IniFile v0.5.0
  [82899510] IteratorInterfaceExtensions v1.0.0
  [682c06a0] JSON v0.21.0
  [7d188eb4] JSONSchema v0.2.0
  [40e66cde] LDLFactorizations v0.4.0
  [b8f27783] MathOptInterface v0.9.12
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
  [6dd1b50a] Tulip v0.3.0
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
  [4607b0f0] SuiteSparse 
  [8dfed614] Test 
  [cf7118a7] UUIDs 
  [4ec0a83e] Unicode 
```
