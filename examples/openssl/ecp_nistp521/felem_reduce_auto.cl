proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in109_0@uint128 _;
mov in109_16@uint128 _;
mov in109_32@uint128 _;
mov in109_48@uint128 _;
mov in109_64@uint128 _;
mov in109_80@uint128 _;
mov in109_96@uint128 _;
mov in109_112@uint128 _;
mov in109_128@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_109(D); *)
mov v1 in109_0;
(* _2 = (long unsigned int) _1; *)
cast v2@uint64 v1@uint128;
(* _3 = _2 & 288230376151711743; *)
and uint64 v3 v2 0x3ffffffffffffff@uint64;
(* _4 = MEM[(const uint128_t * )in_109(D) + 16B]; *)
mov v4 in109_16;
(* _5 = (long unsigned int) _4; *)
cast v5@uint64 v4@uint128;
(* _6 = _5 & 288230376151711743; *)
and uint64 v6 v5 0x3ffffffffffffff@uint64;
(* _7 = MEM[(const uint128_t * )in_109(D) + 32B]; *)
mov v7 in109_32;
(* _8 = (long unsigned int) _7; *)
cast v8@uint64 v7@uint128;
(* _9 = _8 & 288230376151711743; *)
and uint64 v9 v8 0x3ffffffffffffff@uint64;
(* _10 = MEM[(const uint128_t * )in_109(D) + 48B]; *)
mov v10 in109_48;
(* _11 = (long unsigned int) _10; *)
cast v11@uint64 v10@uint128;
(* _12 = _11 & 288230376151711743; *)
and uint64 v12 v11 0x3ffffffffffffff@uint64;
(* _13 = MEM[(const uint128_t * )in_109(D) + 64B]; *)
mov v13 in109_64;
(* _14 = (long unsigned int) _13; *)
cast v14@uint64 v13@uint128;
(* _15 = _14 & 288230376151711743; *)
and uint64 v15 v14 0x3ffffffffffffff@uint64;
(* _16 = MEM[(const uint128_t * )in_109(D) + 80B]; *)
mov v16 in109_80;
(* _17 = (long unsigned int) _16; *)
cast v17@uint64 v16@uint128;
(* _18 = _17 & 288230376151711743; *)
and uint64 v18 v17 0x3ffffffffffffff@uint64;
(* _19 = MEM[(const uint128_t * )in_109(D) + 96B]; *)
mov v19 in109_96;
(* _20 = (long unsigned int) _19; *)
cast v20@uint64 v19@uint128;
(* _21 = _20 & 288230376151711743; *)
and uint64 v21 v20 0x3ffffffffffffff@uint64;
(* _22 = MEM[(const uint128_t * )in_109(D) + 112B]; *)
mov v22 in109_112;
(* _23 = (long unsigned int) _22; *)
cast v23@uint64 v22@uint128;
(* _24 = _23 & 288230376151711743; *)
and uint64 v24 v23 0x3ffffffffffffff@uint64;
(* _25 = MEM[(const uint128_t * )in_109(D) + 128B]; *)
mov v25 in109_128;
(* _26 = (long unsigned int) _25; *)
cast v26@uint64 v25@uint128;
(* _27 = _26 & 288230376151711743; *)
and uint64 v27 v26 0x3ffffffffffffff@uint64;
(* _28 = _2 >> 58; *)
usplit v28 tmp_to_use v2 58;
(* _29 = _6 + _28; *)
uadd v29 v6 v28;
(* _30 = _1 >> 64; *)
usplit v30 tmp_to_use v1 64;
(* _31 = (long unsigned int) _30; *)
cast v31@uint64 v30@uint128;
(* _32 = _31 << 6; *)
usplit tmp1 tmp2 v31 58;
shl v32 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _33 = _32 & 288230376151711680; *)
and uint64 v33 v32 0x3ffffffffffffc0@uint64;
(* _34 = _29 + _33; *)
uadd v34 v29 v33;
(* _35 = _31 >> 52; *)
usplit v35 tmp_to_use v31 52;
(* _37 = _5 >> 58; *)
usplit v37 tmp_to_use v5 58;
(* _132 = _9 + _37; *)
uadd v132 v9 v37;
(* _38 = _35 + _132; *)
uadd v38 v35 v132;
(* _39 = _4 >> 64; *)
usplit v39 tmp_to_use v4 64;
(* _40 = (long unsigned int) _39; *)
cast v40@uint64 v39@uint128;
(* _41 = _40 << 6; *)
usplit tmp1 tmp2 v40 58;
shl v41 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _42 = _41 & 288230376151711680; *)
and uint64 v42 v41 0x3ffffffffffffc0@uint64;
(* _43 = _38 + _42; *)
uadd v43 v38 v42;
(* MEM[(limb * )out_110(D) + 16B] = _43; *)
mov out110_16 v43;
(* _44 = _40 >> 52; *)
usplit v44 tmp_to_use v40 52;
(* _46 = _8 >> 58; *)
usplit v46 tmp_to_use v8 58;
(* _131 = _12 + _46; *)
uadd v131 v12 v46;
(* _47 = _44 + _131; *)
uadd v47 v44 v131;
(* _48 = _7 >> 64; *)
usplit v48 tmp_to_use v7 64;
(* _49 = (long unsigned int) _48; *)
cast v49@uint64 v48@uint128;
(* _50 = _49 << 6; *)
usplit tmp1 tmp2 v49 58;
shl v50 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _51 = _50 & 288230376151711680; *)
and uint64 v51 v50 0x3ffffffffffffc0@uint64;
(* _52 = _47 + _51; *)
uadd v52 v47 v51;
(* MEM[(limb * )out_110(D) + 24B] = _52; *)
mov out110_24 v52;
(* _53 = _49 >> 52; *)
usplit v53 tmp_to_use v49 52;
(* _55 = _11 >> 58; *)
usplit v55 tmp_to_use v11 58;
(* _130 = _15 + _55; *)
uadd v130 v15 v55;
(* _56 = _53 + _130; *)
uadd v56 v53 v130;
(* _57 = _10 >> 64; *)
usplit v57 tmp_to_use v10 64;
(* _58 = (long unsigned int) _57; *)
cast v58@uint64 v57@uint128;
(* _59 = _58 << 6; *)
usplit tmp1 tmp2 v58 58;
shl v59 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _60 = _59 & 288230376151711680; *)
and uint64 v60 v59 0x3ffffffffffffc0@uint64;
(* _61 = _56 + _60; *)
uadd v61 v56 v60;
(* MEM[(limb * )out_110(D) + 32B] = _61; *)
mov out110_32 v61;
(* _62 = _58 >> 52; *)
usplit v62 tmp_to_use v58 52;
(* _64 = _14 >> 58; *)
usplit v64 tmp_to_use v14 58;
(* _129 = _18 + _64; *)
uadd v129 v18 v64;
(* _65 = _62 + _129; *)
uadd v65 v62 v129;
(* _66 = _13 >> 64; *)
usplit v66 tmp_to_use v13 64;
(* _67 = (long unsigned int) _66; *)
cast v67@uint64 v66@uint128;
(* _68 = _67 << 6; *)
usplit tmp1 tmp2 v67 58;
shl v68 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _69 = _68 & 288230376151711680; *)
and uint64 v69 v68 0x3ffffffffffffc0@uint64;
(* _70 = _65 + _69; *)
uadd v70 v65 v69;
(* MEM[(limb * )out_110(D) + 40B] = _70; *)
mov out110_40 v70;
(* _71 = _67 >> 52; *)
usplit v71 tmp_to_use v67 52;
(* _73 = _17 >> 58; *)
usplit v73 tmp_to_use v17 58;
(* _128 = _21 + _73; *)
uadd v128 v21 v73;
(* _74 = _71 + _128; *)
uadd v74 v71 v128;
(* _75 = _16 >> 64; *)
usplit v75 tmp_to_use v16 64;
(* _76 = (long unsigned int) _75; *)
cast v76@uint64 v75@uint128;
(* _77 = _76 << 6; *)
usplit tmp1 tmp2 v76 58;
shl v77 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _78 = _77 & 288230376151711680; *)
and uint64 v78 v77 0x3ffffffffffffc0@uint64;
(* _79 = _74 + _78; *)
uadd v79 v74 v78;
(* MEM[(limb * )out_110(D) + 48B] = _79; *)
mov out110_48 v79;
(* _80 = _76 >> 52; *)
usplit v80 tmp_to_use v76 52;
(* _82 = _20 >> 58; *)
usplit v82 tmp_to_use v20 58;
(* _126 = _24 + _82; *)
uadd v126 v24 v82;
(* _83 = _80 + _126; *)
uadd v83 v80 v126;
(* _84 = _19 >> 64; *)
usplit v84 tmp_to_use v19 64;
(* _85 = (long unsigned int) _84; *)
cast v85@uint64 v84@uint128;
(* _86 = _85 << 6; *)
usplit tmp1 tmp2 v85 58;
shl v86 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _87 = _86 & 288230376151711680; *)
and uint64 v87 v86 0x3ffffffffffffc0@uint64;
(* _88 = _83 + _87; *)
uadd v88 v83 v87;
(* MEM[(limb * )out_110(D) + 56B] = _88; *)
mov out110_56 v88;
(* _89 = _85 >> 52; *)
usplit v89 tmp_to_use v85 52;
(* _91 = _23 >> 58; *)
usplit v91 tmp_to_use v23 58;
(* _127 = _27 + _91; *)
uadd v127 v27 v91;
(* _92 = _89 + _127; *)
uadd v92 v89 v127;
(* _93 = _22 >> 64; *)
usplit v93 tmp_to_use v22 64;
(* _94 = (long unsigned int) _93; *)
cast v94@uint64 v93@uint128;
(* _95 = _94 << 6; *)
usplit tmp1 tmp2 v94 58;
shl v95 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _96 = _95 & 288230376151711680; *)
and uint64 v96 v95 0x3ffffffffffffc0@uint64;
(* _97 = _92 + _96; *)
uadd v97 v92 v96;
(* MEM[(limb * )out_110(D) + 64B] = _97; *)
mov out110_64 v97;
(* overflow1_118 = _94 >> 52; *)
usplit overflow1118 tmp_to_use v94 52;
(* _98 = _26 >> 58; *)
usplit v98 tmp_to_use v26 58;
(* overflow1_119 = _98 + overflow1_118; *)
uadd overflow1119 v98 overflow1118;
(* _99 = _25 >> 64; *)
usplit v99 tmp_to_use v25 64;
(* _100 = (long unsigned int) _99; *)
cast v100@uint64 v99@uint128;
(* _101 = _100 << 6; *)
usplit tmp1 tmp2 v100 58;
shl v101 tmp2 6;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _102 = _101 & 288230376151711680; *)
and uint64 v102 v101 0x3ffffffffffffc0@uint64;
(* overflow1_120 = _102 + overflow1_119; *)
uadd overflow1120 v102 overflow1119;
(* overflow2_121 = _100 >> 52; *)
usplit overflow2121 tmp_to_use v100 52;
(* overflow1_122 = overflow1_120 << 1; *)
usplit tmp1 tmp2 overflow1120 63;
shl overflow1122 tmp2 1;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* overflow2_123 = overflow2_121 << 1; *)
usplit tmp1 tmp2 overflow2121 63;
shl overflow2123 tmp2 1;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _103 = _3 + overflow1_122; *)
uadd v103 v3 overflow1122;
(* _104 = _34 + overflow2_123; *)
uadd v104 v34 overflow2123;
(* _105 = _103 >> 58; *)
usplit v105 tmp_to_use v103 58;
(* _106 = _104 + _105; *)
uadd v106 v104 v105;
(* MEM[(limb * )out_110(D) + 8B] = _106; *)
mov out110_8 v106;
(* _107 = _103 & 288230376151711743; *)
and uint64 v107 v103 0x3ffffffffffffff@uint64;
(* *out_110(D) = _107; *)
mov out110_0 v107;
(* return; *)


(* Start with unused lhs *)
mov _ out110_0@uint64;
mov _ out110_8@uint64;
mov _ out110_16@uint64;
mov _ out110_24@uint64;
mov _ out110_32@uint64;
mov _ out110_40@uint64;
mov _ out110_48@uint64;
mov _ out110_56@uint64;
mov _ out110_64@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}
