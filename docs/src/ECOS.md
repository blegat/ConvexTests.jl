Table of contents:

```@contents
Pages = ["ECOS.md"]
Depth = 4
```


Compilation warmup gives an estimate of 25 seconds of compilation time.

## ECOS 
These tests were run on November 12, 2020 at 15:43 (UTC).


Excluded problems and classes of problems:
```julia
Regex[r"mip", r"sdp"]
```

### Tests

Tests took 1 minute, 8 seconds to run (after warmup).

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
<td style="text-align:center;color:green;">355</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">355</td>
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
       Tot / % measured:            67.2s / 99.0%           6.61GiB / 99.5%    

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 affine                     1    27.4s  41.1%   27.4s   2.72GiB  41.4%  2.72GiB
   affine_Partial_t...      1    2.72s  4.09%   2.72s    280MiB  4.17%   280MiB
   affine_permutedd...      1    2.63s  3.95%   2.63s    321MiB  4.78%   321MiB
   affine_dot_multi...      1    2.15s  3.23%   2.15s    151MiB  2.25%   151MiB
   affine_multiply_...      1    2.12s  3.19%   2.12s    211MiB  3.14%   211MiB
   affine_hcat_atom         1    2.10s  3.16%   2.10s    190MiB  2.82%   190MiB
   affine_transpose...      1    1.87s  2.81%   1.87s    172MiB  2.56%   172MiB
   affine_vcat_atom         1    1.20s  1.80%   1.20s   99.5MiB  1.48%  99.5MiB
   affine_Diagonal_...      1    1.15s  1.73%   1.15s    107MiB  1.60%   107MiB
   affine_satisfy_p...      1    1.02s  1.53%   1.02s   57.3MiB  0.85%  57.3MiB
   affine_add_atom          1    1.00s  1.51%   1.00s   67.9MiB  1.01%  67.9MiB
   affine_conv_atom         1    824ms  1.24%   824ms   54.0MiB  0.80%  54.0MiB
   affine_index_atom        1    635ms  0.95%   635ms   41.9MiB  0.62%  41.9MiB
   affine_dot_atom          1    552ms  0.83%   552ms   25.6MiB  0.38%  25.6MiB
   affine_dualvalue         1    550ms  0.83%   550ms   46.8MiB  0.70%  46.8MiB
   affine_reshape_atom      1    542ms  0.81%   542ms   27.8MiB  0.41%  27.8MiB
   affine_kron_atom         1    425ms  0.64%   425ms   20.1MiB  0.30%  20.1MiB
   affine_sum_atom          1    389ms  0.58%   389ms   31.0MiB  0.46%  31.0MiB
   affine_dot_atom_...      1    137ms  0.21%   137ms   4.94MiB  0.07%  4.94MiB
   affine_diag_atom         1    135ms  0.20%   135ms   14.2MiB  0.21%  14.2MiB
   affine_negate_atom       1   96.5ms  0.15%  96.5ms   3.81MiB  0.06%  3.81MiB
   affine_trace_atom        1   45.0ms  0.07%  45.0ms   2.62MiB  0.04%  2.62MiB
 socp                       1    19.8s  29.8%   19.8s   2.02GiB  30.8%  2.02GiB
   socp_quad_form_atom      1    2.81s  4.22%   2.81s   41.9MiB  0.62%  41.9MiB
   socp_dual_minima...      1    2.44s  3.67%   2.44s    192MiB  2.85%   192MiB
   socp_rational_no...      1    1.51s  2.26%   1.51s    138MiB  2.05%   138MiB
   socp_sum_squares...      1    1.16s  1.74%   1.16s    108MiB  1.60%   108MiB
   socp_inv_pos_atom        1    865ms  1.30%   865ms   68.8MiB  1.02%  68.8MiB
   socp_dual_norm_2...      1    833ms  1.25%   833ms   69.5MiB  1.03%  69.5MiB
   socp_quad_over_l...      1    615ms  0.92%   615ms   30.8MiB  0.46%  30.8MiB
   socp_rational_no...      1    538ms  0.81%   538ms   40.9MiB  0.61%  40.9MiB
   socp_fix_multipl...      1    471ms  0.71%   471ms   33.2MiB  0.49%  33.2MiB
   socp_norm_consis...      1    468ms  0.70%   468ms   27.9MiB  0.41%  27.9MiB
   socp_huber_atom          1    404ms  0.61%   404ms   35.4MiB  0.53%  35.4MiB
   socp_geo_mean_atom       1    334ms  0.50%   334ms   24.2MiB  0.36%  24.2MiB
   socp_dual_froben...      1    333ms  0.50%   333ms   25.5MiB  0.38%  25.5MiB
   socp_square_atom         1    304ms  0.46%   304ms   14.3MiB  0.21%  14.3MiB
   socp_rational_no...      1    134ms  0.20%   134ms   9.00MiB  0.13%  9.00MiB
   socp_fix_and_fre...      1   78.5ms  0.12%  78.5ms   5.59MiB  0.08%  5.59MiB
   socp_sqrt_atom           1   51.4ms  0.08%  51.4ms   1.08MiB  0.02%  1.08MiB
 constant                   1    10.0s  15.0%   10.0s   1.00GiB  15.2%  1.00GiB
   constant_Issue_166       1    3.33s  5.01%   3.33s    373MiB  5.55%   373MiB
   constant_fix!_wi...      1    3.27s  4.92%   3.27s    274MiB  4.08%   274MiB
   constant_Issue_228       1    774ms  1.16%   774ms   54.1MiB  0.80%  54.1MiB
   constant_fix!_wi...      1    551ms  0.83%   551ms   45.1MiB  0.67%  45.1MiB
   constant_fix!_an...      1    408ms  0.61%   408ms   45.2MiB  0.67%  45.2MiB
   constant_Test_do...      1    304ms  0.46%   304ms   19.5MiB  0.29%  19.5MiB
 lp                         1    5.88s  8.84%   5.88s    554MiB  8.24%   554MiB
   lp_dotsort_atom          1    920ms  1.38%   920ms   69.7MiB  1.04%  69.7MiB
   lp_sumlargest_atom       1    587ms  0.88%   587ms   52.8MiB  0.78%  52.8MiB
   lp_min_atom              1    585ms  0.88%   585ms   38.9MiB  0.58%  38.9MiB
   lp_max_atom              1    417ms  0.63%   417ms   32.1MiB  0.48%  32.1MiB
   lp_minimum_atom          1    328ms  0.49%   328ms   26.8MiB  0.40%  26.8MiB
   lp_dual_abs_atom         1    304ms  0.46%   304ms   18.5MiB  0.28%  18.5MiB
   lp_sumsmallest_atom      1    296ms  0.44%   296ms   21.8MiB  0.32%  21.8MiB
   lp_maximum_atom          1    232ms  0.35%   232ms   12.6MiB  0.19%  12.6MiB
   lp_neg_atom              1    218ms  0.33%   218ms   11.5MiB  0.17%  11.5MiB
   lp_dual_norm_inf...      1    105ms  0.16%   105ms   3.81MiB  0.06%  3.81MiB
   lp_pos_atom              1   83.0ms  0.12%  83.0ms   6.24MiB  0.09%  6.24MiB
   lp_dual_norm_1_atom      1   68.5ms  0.10%  68.5ms   3.50MiB  0.05%  3.50MiB
   lp_hinge_loss_atom       1    358μs  0.00%   358μs   49.7KiB  0.00%  49.7KiB
 exp                        1    3.48s  5.22%   3.48s    299MiB  4.45%   299MiB
   exp_log_atom             1    1.21s  1.82%   1.21s   91.5MiB  1.36%  91.5MiB
   exp_entropy_atom         1    411ms  0.62%   411ms   37.3MiB  0.55%  37.3MiB
   exp_log_sum_exp_...      1    287ms  0.43%   287ms   23.8MiB  0.35%  23.8MiB
   exp_exp_atom             1    270ms  0.41%   270ms   17.8MiB  0.27%  17.8MiB
   exp_log_perspect...      1    268ms  0.40%   268ms   19.9MiB  0.30%  19.9MiB
   exp_logistic_los...      1    228ms  0.34%   228ms   14.0MiB  0.21%  14.0MiB
   exp_relative_ent...      1   75.6ms  0.11%  75.6ms   5.22MiB  0.08%  5.22MiB
 ──────────────────────────────────────────────────────────────────────────────

```

## Version information
`versioninfo()`:
```julia
Julia Version 1.3.1
Commit 2d5741174c (2019-12-30 21:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
  CPU: Intel(R) Xeon(R) CPU E5-2673 v3 @ 2.40GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, haswell)
```

Manifest:
```julia
    Status `~/work/ConvexTests.jl/ConvexTests.jl/ECOS/Manifest.toml`
  [1520ce14] AbstractTrees v0.3.3
  [56f22d72] Artifacts v1.3.0
  [6e4b80f9] BenchmarkTools v0.5.0
  [b99e7846] BinaryProvider v0.5.10
  [6e34b625] Bzip2_jll v1.0.6+5
  [523fee87] CodecBzip2 v0.7.2
  [944b1d66] CodecZlib v0.7.0
  [f65535da] Convex v0.13.7
  [cb7cb77b] ConvexTests v0.1.0 [`~/work/ConvexTests.jl/ConvexTests.jl`]
  [9a962f9c] DataAPI v1.4.0
  [e2d170a0] DataValueInterfaces v1.0.0
  [e2685f51] ECOS v0.12.1
  [c2c64177] ECOS_jll v2.0.5+1
  [cd3eb016] HTTP v0.8.19
  [83e8ac13] IniFile v0.5.0
  [82899510] IteratorInterfaceExtensions v1.0.0
  [692b3bcd] JLLWrappers v1.1.3
  [682c06a0] JSON v0.21.1
  [7d188eb4] JSONSchema v0.3.2
  [b8f27783] MathOptInterface v0.9.18
  [fdba3010] MathProgBase v0.7.8
  [739be429] MbedTLS v1.0.3
  [c8ffd9c3] MbedTLS_jll v2.16.8+1
  [d8a4904e] MutableArithmetics v0.2.11
  [bac558e1] OrderedCollections v1.3.2
  [69de0a69] Parsers v1.0.12
  [f9bf3ced] TableTestSets v0.1.0 #master (https://github.com/ericphanson/TableTestSets.jl)
  [3783bdb8] TableTraits v1.0.0
  [bd369af6] Tables v1.2.1
  [a759f4b9] TimerOutputs v0.5.7
  [3bb67fe8] TranscodingStreams v0.9.5
  [a5390f91] ZipFile v0.9.3
  [83775a58] Zlib_jll v1.2.11+18
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
