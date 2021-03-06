Table of contents:

```@contents
Pages = ["Mosek.md"]
Depth = 4
```


Compilation warmup gives an estimate of 27 seconds of compilation time.

## Mosek 
These tests were run on March 4, 2020 at 19:07 (UTC).

These tests were run locally with Mosek 9.1 on MacOS.

No problems excluded.

### Tests

Tests took 2 minutes, 2 seconds to run (after warmup).

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
<tr><td style="text-align:left;border-right: solid 2px;">Mosek tests</td>
<td style="text-align:center;color:green;">442</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">442</td>
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
       Tot / % measured:             122s / 99.4%           8.52GiB / 100%     

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 affine                     1    45.5s  37.6%   45.5s   2.73GiB  32.2%  2.73GiB
   affine_Partial_t...      1    4.95s  4.08%   4.95s    292MiB  3.36%   292MiB
   affine_multiply_...      1    4.32s  3.56%   4.32s    211MiB  2.43%   211MiB
   affine_permutedd...      1    4.24s  3.50%   4.24s    319MiB  3.67%   319MiB
   affine_hcat_atom         1    3.08s  2.54%   3.08s    181MiB  2.09%   181MiB
   affine_Diagonal_...      1    2.89s  2.38%   2.89s    107MiB  1.23%   107MiB
   affine_dot_multi...      1    2.85s  2.35%   2.85s    151MiB  1.74%   151MiB
   affine_add_atom          1    2.70s  2.23%   2.70s   67.4MiB  0.78%  67.4MiB
   affine_transpose...      1    2.35s  1.94%   2.35s    172MiB  1.98%   172MiB
   affine_satisfy_p...      1    1.57s  1.30%   1.57s   57.0MiB  0.66%  57.0MiB
   affine_vcat_atom         1    1.34s  1.10%   1.34s    100MiB  1.15%   100MiB
   affine_conv_atom         1    1.04s  0.86%   1.04s   53.9MiB  0.62%  53.9MiB
   affine_dot_atom          1    815ms  0.67%   815ms   25.5MiB  0.29%  25.5MiB
   affine_reshape_atom      1    731ms  0.60%   731ms   27.6MiB  0.32%  27.6MiB
   affine_sum_atom          1    624ms  0.51%   624ms   30.8MiB  0.35%  30.8MiB
   affine_index_atom        1    619ms  0.51%   619ms   40.0MiB  0.46%  40.0MiB
   affine_dualvalue         1    592ms  0.49%   592ms   32.7MiB  0.38%  32.7MiB
   affine_kron_atom         1    333ms  0.28%   333ms   20.0MiB  0.23%  20.0MiB
   affine_diag_atom         1    172ms  0.14%   172ms   14.1MiB  0.16%  14.1MiB
   affine_dot_atom_...      1    126ms  0.10%   126ms   4.88MiB  0.06%  4.88MiB
   affine_negate_atom       1    111ms  0.09%   111ms   3.73MiB  0.04%  3.73MiB
   affine_trace_atom        1   53.9ms  0.04%  53.9ms   2.54MiB  0.03%  2.54MiB
 socp                       1    26.3s  21.7%   26.3s   1.93GiB  22.8%  1.93GiB
   socp_dual_minima...      1    6.43s  5.31%   6.43s    237MiB  2.73%   237MiB
   socp_quad_form_atom      1    2.72s  2.24%   2.72s   32.8MiB  0.38%  32.8MiB
   socp_rational_no...      1    1.87s  1.54%   1.87s    134MiB  1.54%   134MiB
   socp_sum_squares...      1    1.67s  1.38%   1.67s    107MiB  1.24%   107MiB
   socp_inv_pos_atom        1    991ms  0.82%   991ms   68.7MiB  0.79%  68.7MiB
   socp_dual_norm_2...      1    828ms  0.68%   828ms   64.7MiB  0.75%  64.7MiB
   socp_rational_no...      1    822ms  0.68%   822ms   56.7MiB  0.65%  56.7MiB
   socp_quad_over_l...      1    811ms  0.67%   811ms   30.2MiB  0.35%  30.2MiB
   socp_huber_atom          1    704ms  0.58%   704ms   49.1MiB  0.57%  49.1MiB
   socp_fix_multipl...      1    443ms  0.37%   443ms   32.9MiB  0.38%  32.9MiB
   socp_norm_consis...      1    436ms  0.36%   436ms   27.6MiB  0.32%  27.6MiB
   socp_geo_mean_atom       1    336ms  0.28%   336ms   24.2MiB  0.28%  24.2MiB
   socp_square_atom         1    314ms  0.26%   314ms   14.2MiB  0.16%  14.2MiB
   socp_dual_froben...      1    308ms  0.25%   308ms   25.5MiB  0.29%  25.5MiB
   socp_fix_and_fre...      1    305ms  0.25%   305ms   30.0MiB  0.35%  30.0MiB
   socp_rational_no...      1    159ms  0.13%   159ms   9.20MiB  0.11%  9.20MiB
   socp_sqrt_atom           1   44.1ms  0.04%  44.1ms   1.08MiB  0.01%  1.08MiB
 sdp                        1    20.0s  16.5%   20.0s   1.55GiB  18.3%  1.55GiB
   sdp_operator_nor...      1    3.46s  2.86%   3.46s    256MiB  2.95%   256MiB
   sdp_Partial_trace        1    2.34s  1.93%   2.34s    222MiB  2.55%   222MiB
   sdp_matrix_frac_...      1    1.33s  1.10%   1.33s   80.4MiB  0.93%  80.4MiB
   sdp_matrix_frac_...      1    987ms  0.81%   987ms   68.3MiB  0.79%  68.3MiB
   sdp_dual_lambda_...      1    944ms  0.78%   944ms   69.8MiB  0.80%  69.8MiB
   sdp_Complex_Vari...      1    858ms  0.71%   858ms   33.0MiB  0.38%  33.0MiB
   sdp_sum_largest_...      1    815ms  0.67%   815ms   45.2MiB  0.52%  45.2MiB
   sdp_socp_sumsqua...      1    772ms  0.64%   772ms   54.3MiB  0.63%  54.3MiB
   sdp_Complex_Semi...      1    760ms  0.63%   760ms   26.8MiB  0.31%  26.8MiB
   sdp_lambda_min_atom      1    623ms  0.51%   623ms   42.1MiB  0.49%  42.1MiB
   sdp_Issue_198            1    390ms  0.32%   390ms   37.4MiB  0.43%  37.4MiB
   sdp_socp_norm2_atom      1    347ms  0.29%   347ms   23.3MiB  0.27%  23.3MiB
   sdp_nuclear_norm...      1    323ms  0.27%   323ms   31.0MiB  0.36%  31.0MiB
   sdp_sdp_variables        1    289ms  0.24%   289ms   23.0MiB  0.26%  23.0MiB
   sdp_socp_abs_atom        1    237ms  0.20%   237ms   16.4MiB  0.19%  16.4MiB
   sdp_kron_atom            1    148ms  0.12%   148ms   19.5MiB  0.22%  19.5MiB
   sdp_sigma_max_atom       1    141ms  0.12%   141ms   13.5MiB  0.16%  13.5MiB
   sdp_sdp_constraints      1    112ms  0.09%   112ms   10.7MiB  0.12%  10.7MiB
   sdp_Real_Variabl...      1   90.7ms  0.07%  90.7ms   5.05MiB  0.06%  5.05MiB
 constant                   1    14.8s  12.2%   14.8s   1.11GiB  13.1%  1.11GiB
   constant_fix!_wi...      1    5.68s  4.68%   5.68s    283MiB  3.26%   283MiB
   constant_Issue_166       1    5.07s  4.18%   5.07s    471MiB  5.43%   471MiB
   constant_Issue_228       1    977ms  0.81%   977ms   69.8MiB  0.80%  69.8MiB
   constant_fix!_wi...      1    600ms  0.49%   600ms   44.7MiB  0.51%  44.7MiB
   constant_Test_do...      1    434ms  0.36%   434ms   18.9MiB  0.22%  18.9MiB
   constant_fix!_an...      1    426ms  0.35%   426ms   43.7MiB  0.50%  43.7MiB
 lp                         1    6.69s  5.52%   6.69s    577MiB  6.65%   577MiB
   lp_dotsort_atom          1    985ms  0.81%   985ms   89.3MiB  1.03%  89.3MiB
   lp_min_atom              1    804ms  0.66%   804ms   40.3MiB  0.46%  40.3MiB
   lp_sumlargest_atom       1    590ms  0.49%   590ms   48.7MiB  0.56%  48.7MiB
   lp_minimum_atom          1    426ms  0.35%   426ms   27.2MiB  0.31%  27.2MiB
   lp_max_atom              1    386ms  0.32%   386ms   33.6MiB  0.39%  33.6MiB
   lp_dual_abs_atom         1    290ms  0.24%   290ms   18.4MiB  0.21%  18.4MiB
   lp_sumsmallest_atom      1    278ms  0.23%   278ms   22.0MiB  0.25%  22.0MiB
   lp_maximum_atom          1    236ms  0.20%   236ms   12.5MiB  0.14%  12.5MiB
   lp_neg_atom              1    207ms  0.17%   207ms   11.7MiB  0.14%  11.7MiB
   lp_dual_norm_inf...      1    116ms  0.10%   116ms   3.76MiB  0.04%  3.76MiB
   lp_pos_atom              1   69.6ms  0.06%  69.6ms   6.18MiB  0.07%  6.18MiB
   lp_dual_norm_1_atom      1   63.9ms  0.05%  63.9ms   3.44MiB  0.04%  3.44MiB
   lp_hinge_loss_atom       1    305μs  0.00%   305μs   49.7KiB  0.00%  49.7KiB
 exp                        1    4.43s  3.66%   4.43s    343MiB  3.95%   343MiB
   exp_log_atom             1    1.85s  1.53%   1.85s    137MiB  1.58%   137MiB
   exp_exp_atom             1    468ms  0.39%   468ms   17.6MiB  0.20%  17.6MiB
   exp_entropy_atom         1    418ms  0.34%   418ms   37.2MiB  0.43%  37.2MiB
   exp_logistic_los...      1    330ms  0.27%   330ms   14.0MiB  0.16%  14.0MiB
   exp_log_sum_exp_...      1    314ms  0.26%   314ms   23.8MiB  0.27%  23.8MiB
   exp_log_perspect...      1    260ms  0.21%   260ms   19.9MiB  0.23%  19.9MiB
   exp_relative_ent...      1   63.0ms  0.05%  63.0ms   5.14MiB  0.06%  5.14MiB
 sdp_and_exp                1    2.02s  1.66%   2.02s    129MiB  1.48%   129MiB
   sdp_and_exp_log_...      1    1.89s  1.56%   1.89s    113MiB  1.30%   113MiB
 mip                        1    1.44s  1.19%   1.44s    141MiB  1.62%   141MiB
   mip_binary_varia...      1    616ms  0.51%   616ms   62.1MiB  0.72%  62.1MiB
   mip_integer_vari...      1    433ms  0.36%   433ms   31.6MiB  0.36%  31.6MiB
   mip_lp_fallback_...      1   78.0ms  0.06%  78.0ms   8.99MiB  0.10%  8.99MiB
 ──────────────────────────────────────────────────────────────────────────────
```

## Version information
`versioninfo()`:
```julia
Julia Version 1.3.1
Commit 2d5741174c (2019-12-30 21:36 UTC)
Platform Info:
  OS: macOS (x86_64-apple-darwin18.6.0)
  CPU: Intel(R) Core(TM) i5-5257U CPU @ 2.70GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, broadwell)
Environment:
  JULIA_NUM_THREADS = 2
  JULIA_EDITOR = code
```

Manifest:
```julia
    Status `~/Dropbox (Personal)/LinkedFolders/Julia/dev/ConvexTests/Mosek/Manifest.toml`
  [1520ce14] AbstractTrees v0.3.2
  [6e4b80f9] BenchmarkTools v0.5.0
  [b99e7846] BinaryProvider v0.5.8
  [523fee87] CodecBzip2 v0.6.0
  [944b1d66] CodecZlib v0.6.0
  [f65535da] Convex v0.13.0
  [cb7cb77b] ConvexTests v0.1.0 [`..`]
  [9a962f9c] DataAPI v1.1.0
  [e2d170a0] DataValueInterfaces v1.0.0
  [cd3eb016] HTTP v0.8.12
  [83e8ac13] IniFile v0.5.0
  [82899510] IteratorInterfaceExtensions v1.0.0
  [682c06a0] JSON v0.21.0
  [7d188eb4] JSONSchema v0.2.0
  [b8f27783] MathOptInterface v0.9.12
  [739be429] MbedTLS v1.0.1
  [c8ffd9c3] MbedTLS_jll v2.16.0+1
  [6405355b] Mosek v1.1.1
  [1ec41992] MosekTools v0.9.3
  [d8a4904e] MutableArithmetics v0.2.7
  [bac558e1] OrderedCollections v1.1.0
  [69de0a69] Parsers v0.3.12
  [f9bf3ced] TableTestSets v0.1.0 #master (https://github.com/ericphanson/TableTestSets.jl/)
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
