(* NOTE: safety check fails, range property cannot be specified *)
(*
===== Verification =====
Arguments: -v -qfbv_solver boolector -isafety -disable_safety ./felem_mul_tuned.cl
Parsing Cryptoline file:		[OK]		0.001559 seconds
Checking well-formedness:		[OK]		0.000701 seconds
Transforming to SSA form:		[OK]		0.000212 seconds
Rewriting assignments:			[OK]		0.000265 seconds
Verifying range specification:		[OK]		0.069021 seconds
Rewriting value-preserved casting:	[OK]		0.000006 seconds
Verifying algebraic specification:	[OK]		0.101869 seconds
Verification result:			[OK]		0.174749 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 b6, uint64 b7, uint64 b8) = 
{
  true
  &&
  and [
      a0 < (2**62 + 2**59 + 2**14)@64,
      a1 < (2**62 + 2**59 + 2**14)@64,
      a2 < (2**62 + 2**59 + 2**14)@64,
      a3 < (2**62 + 2**59 + 2**14)@64,
      a4 < (2**62 + 2**59 + 2**14)@64,
      a5 < (2**62 + 2**59 + 2**14)@64,
      a6 < (2**62 + 2**59 + 2**14)@64,
      a7 < (2**62 + 2**59 + 2**14)@64,
      a8 < (2**62 + 2**59 + 2**14)@64,
      b0 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b1 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b2 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b3 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b4 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b5 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b6 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b7 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b8 < (2**61 + 2**60 + 2**16 + 2**15)@64
  ]
}

(* Start with undefined rhs *)
mov in1191_0@uint64 a0;
mov in1191_8@uint64 a1;
mov in1191_16@uint64 a2;
mov in1191_24@uint64 a3;
mov in1191_32@uint64 a4;
mov in1191_40@uint64 a5;
mov in1191_48@uint64 a6;
mov in1191_56@uint64 a7;
mov in1191_64@uint64 a8;
mov in2190_0@uint64 b0;
mov in2190_8@uint64 b1;
mov in2190_16@uint64 b2;
mov in2190_24@uint64 b3;
mov in2190_32@uint64 b4;
mov in2190_40@uint64 b5;
mov in2190_48@uint64 b6;
mov in2190_56@uint64 b7;
mov in2190_64@uint64 b8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _202 = *in2_190(D); *)
mov v202 in2190_0;
(* _203 = MEM[(const limb * )in2_190(D) + 8B]; *)
mov v203 in2190_8;
(* _204 = _203 * 2; *)
umul v204 v203 0x2@uint64;
(* _205 = MEM[(const limb * )in2_190(D) + 16B]; *)
mov v205 in2190_16;
(* _206 = _205 * 2; *)
umul v206 v205 0x2@uint64;
(* _207 = MEM[(const limb * )in2_190(D) + 24B]; *)
mov v207 in2190_24;
(* _208 = _207 * 2; *)
umul v208 v207 0x2@uint64;
(* _209 = MEM[(const limb * )in2_190(D) + 32B]; *)
mov v209 in2190_32;
(* _210 = _209 * 2; *)
umul v210 v209 0x2@uint64;
(* _211 = MEM[(const limb * )in2_190(D) + 40B]; *)
mov v211 in2190_40;
(* _212 = _211 * 2; *)
umul v212 v211 0x2@uint64;
(* _213 = MEM[(const limb * )in2_190(D) + 48B]; *)
mov v213 in2190_48;
(* _214 = _213 * 2; *)
umul v214 v213 0x2@uint64;
(* _215 = MEM[(const limb * )in2_190(D) + 56B]; *)
mov v215 in2190_56;
(* _216 = _215 * 2; *)
umul v216 v215 0x2@uint64;
(* _217 = MEM[(const limb * )in2_190(D) + 64B]; *)
mov v217 in2190_64;
(* _218 = _217 * 2; *)
umul v218 v217 0x2@uint64;
(* _1 = *in1_191(D); *)
mov v1 in1191_0;
(* _4 = _1 w* _202; *)
umulj v4 v1 v202;
(* _6 = _1 w* _203; *)
umulj v6 v1 v203;
(* _7 = MEM[(const limb * )in1_191(D) + 8B]; *)
mov v7 in1191_8;
(* _9 = _202 w* _7; *)
umulj v9 v202 v7;
(* _290 = _6 + _9; *)
uadd v290 v6 v9;
(* _12 = _1 w* _205; *)
umulj v12 v1 v205;
(* _13 = _203 w* _7; *)
umulj v13 v203 v7;
(* _277 = _12 + _13; *)
uadd v277 v12 v13;
(* _15 = MEM[(const limb * )in1_191(D) + 16B]; *)
mov v15 in1191_16;
(* _17 = _202 w* _15; *)
umulj v17 v202 v15;
(* _278 = _17 + _277; *)
uadd v278 v17 v277;
(* _20 = _1 w* _207; *)
umulj v20 v1 v207;
(* _21 = _7 w* _205; *)
umulj v21 v7 v205;
(* _265 = _20 + _21; *)
uadd v265 v20 v21;
(* _23 = MEM[(const limb * )in1_191(D) + 24B]; *)
mov v23 in1191_24;
(* _25 = _202 w* _23; *)
umulj v25 v202 v23;
(* _26 = _203 w* _15; *)
umulj v26 v203 v15;
(* _266 = _25 + _265; *)
uadd v266 v25 v265;
(* _267 = _26 + _266; *)
uadd v267 v26 v266;
(* _30 = _1 w* _209; *)
umulj v30 v1 v209;
(* _31 = _7 w* _207; *)
umulj v31 v7 v207;
(* _253 = _30 + _31; *)
uadd v253 v30 v31;
(* _33 = _203 w* _23; *)
umulj v33 v203 v23;
(* _34 = _205 w* _15; *)
umulj v34 v205 v15;
(* _254 = _33 + _253; *)
uadd v254 v33 v253;
(* _255 = _34 + _254; *)
uadd v255 v34 v254;
(* _37 = MEM[(const limb * )in1_191(D) + 32B]; *)
mov v37 in1191_32;
(* _39 = _202 w* _37; *)
umulj v39 v202 v37;
(* _256 = _39 + _255; *)
uadd v256 v39 v255;
(* _42 = _1 w* _211; *)
umulj v42 v1 v211;
(* _43 = _7 w* _209; *)
umulj v43 v7 v209;
(* _242 = _42 + _43; *)
uadd v242 v42 v43;
(* _45 = _205 w* _23; *)
umulj v45 v205 v23;
(* _46 = _15 w* _207; *)
umulj v46 v15 v207;
(* _243 = _45 + _242; *)
uadd v243 v45 v242;
(* _244 = _46 + _243; *)
uadd v244 v46 v243;
(* _49 = MEM[(const limb * )in1_191(D) + 40B]; *)
mov v49 in1191_40;
(* _51 = _202 w* _49; *)
umulj v51 v202 v49;
(* _52 = _203 w* _37; *)
umulj v52 v203 v37;
(* _245 = _51 + _244; *)
uadd v245 v51 v244;
(* _246 = _52 + _245; *)
uadd v246 v52 v245;
(* _56 = _1 w* _213; *)
umulj v56 v1 v213;
(* _57 = _7 w* _211; *)
umulj v57 v7 v211;
(* _231 = _56 + _57; *)
uadd v231 v56 v57;
(* _59 = _207 w* _23; *)
umulj v59 v207 v23;
(* _60 = _15 w* _209; *)
umulj v60 v15 v209;
(* _232 = _59 + _231; *)
uadd v232 v59 v231;
(* _233 = _60 + _232; *)
uadd v233 v60 v232;
(* _63 = _203 w* _49; *)
umulj v63 v203 v49;
(* _64 = _205 w* _37; *)
umulj v64 v205 v37;
(* _234 = _63 + _233; *)
uadd v234 v63 v233;
(* _235 = _64 + _234; *)
uadd v235 v64 v234;
(* _67 = MEM[(const limb * )in1_191(D) + 48B]; *)
mov v67 in1191_48;
(* _69 = _202 w* _67; *)
umulj v69 v202 v67;
(* _236 = _69 + _235; *)
uadd v236 v69 v235;
(* _72 = _1 w* _215; *)
umulj v72 v1 v215;
(* _73 = _7 w* _213; *)
umulj v73 v7 v213;
(* _222 = _72 + _73; *)
uadd v222 v72 v73;
(* _75 = _23 w* _209; *)
umulj v75 v23 v209;
(* _76 = _15 w* _211; *)
umulj v76 v15 v211;
(* _223 = _75 + _222; *)
uadd v223 v75 v222;
(* _224 = _76 + _223; *)
uadd v224 v76 v223;
(* _79 = _205 w* _49; *)
umulj v79 v205 v49;
(* _80 = _207 w* _37; *)
umulj v80 v207 v37;
(* _225 = _79 + _224; *)
uadd v225 v79 v224;
(* _226 = _80 + _225; *)
uadd v226 v80 v225;
(* _83 = MEM[(const limb * )in1_191(D) + 56B]; *)
mov v83 in1191_56;
(* _85 = _202 w* _83; *)
umulj v85 v202 v83;
(* _86 = _203 w* _67; *)
umulj v86 v203 v67;
(* _227 = _85 + _226; *)
uadd v227 v85 v226;
(* _88 = _86 + _227; *)
uadd v88 v86 v227;
(* _90 = _1 w* _217; *)
umulj v90 v1 v217;
(* _91 = _7 w* _215; *)
umulj v91 v7 v215;
(* _309 = _90 + _91; *)
uadd v309 v90 v91;
(* _93 = _23 w* _211; *)
umulj v93 v23 v211;
(* _94 = _15 w* _213; *)
umulj v94 v15 v213;
(* _310 = _93 + _309; *)
uadd v310 v93 v309;
(* _311 = _94 + _310; *)
uadd v311 v94 v310;
(* _97 = _207 w* _49; *)
umulj v97 v207 v49;
(* _98 = _209 w* _37; *)
umulj v98 v209 v37;
(* _312 = _97 + _311; *)
uadd v312 v97 v311;
(* _313 = _98 + _312; *)
uadd v313 v98 v312;
(* _101 = _203 w* _83; *)
umulj v101 v203 v83;
(* _102 = _205 w* _67; *)
umulj v102 v205 v67;
(* _314 = _101 + _313; *)
uadd v314 v101 v313;
(* _104 = _102 + _314; *)
uadd v104 v102 v314;
(* _105 = MEM[(const limb * )in1_191(D) + 64B]; *)
mov v105 in1191_64;
(* _107 = _202 w* _105; *)
umulj v107 v202 v105;
(* _108 = _104 + _107; *)
uadd v108 v104 v107;
(* MEM[(uint128_t * )out_192(D) + 128B] = _108; *)
mov out192_128 v108;
(* _110 = _7 w* _218; *)
umulj v110 v7 v218;
(* _112 = _15 w* _216; *)
umulj v112 v15 v216;
(* _113 = _110 + _112; *)
uadd v113 v110 v112;
(* _115 = _37 w* _212; *)
umulj v115 v37 v212;
(* _117 = _23 w* _214; *)
umulj v117 v23 v214;
(* _300 = _4 + _113; *)
uadd v300 v4 v113;
(* _301 = _115 + _300; *)
uadd v301 v115 v300;
(* _121 = _67 w* _208; *)
umulj v121 v67 v208;
(* _123 = _49 w* _210; *)
umulj v123 v49 v210;
(* _302 = _117 + _301; *)
uadd v302 v117 v301;
(* _303 = _121 + _302; *)
uadd v303 v121 v302;
(* _127 = _105 w* _204; *)
umulj v127 v105 v204;
(* _129 = _83 w* _206; *)
umulj v129 v83 v206;
(* _304 = _123 + _303; *)
uadd v304 v123 v303;
(* _305 = _127 + _304; *)
uadd v305 v127 v304;
(* _132 = _129 + _305; *)
uadd v132 v129 v305;
(* *out_192(D) = _132; *)
mov out192_0 v132;
(* _133 = _15 w* _218; *)
umulj v133 v15 v218;
(* _134 = _23 w* _216; *)
umulj v134 v23 v216;
(* _136 = _49 w* _212; *)
umulj v136 v49 v212;
(* _137 = _37 w* _214; *)
umulj v137 v37 v214;
(* _140 = _83 w* _208; *)
umulj v140 v83 v208;
(* _141 = _67 w* _210; *)
umulj v141 v67 v210;
(* _144 = _105 w* _206; *)
umulj v144 v105 v206;
(* _291 = _133 + _290; *)
uadd v291 v133 v290;
(* _292 = _134 + _291; *)
uadd v292 v134 v291;
(* _293 = _136 + _292; *)
uadd v293 v136 v292;
(* _294 = _137 + _293; *)
uadd v294 v137 v293;
(* _295 = _140 + _294; *)
uadd v295 v140 v294;
(* _296 = _141 + _295; *)
uadd v296 v141 v295;
(* _146 = _144 + _296; *)
uadd v146 v144 v296;
(* MEM[(uint128_t * )out_192(D) + 16B] = _146; *)
mov out192_16 v146;
(* _147 = _23 w* _218; *)
umulj v147 v23 v218;
(* _148 = _37 w* _216; *)
umulj v148 v37 v216;
(* _150 = _67 w* _212; *)
umulj v150 v67 v212;
(* _151 = _49 w* _214; *)
umulj v151 v49 v214;
(* _154 = _105 w* _208; *)
umulj v154 v105 v208;
(* _155 = _83 w* _210; *)
umulj v155 v83 v210;
(* _279 = _147 + _278; *)
uadd v279 v147 v278;
(* _280 = _148 + _279; *)
uadd v280 v148 v279;
(* _281 = _150 + _280; *)
uadd v281 v150 v280;
(* _282 = _151 + _281; *)
uadd v282 v151 v281;
(* _283 = _154 + _282; *)
uadd v283 v154 v282;
(* _158 = _155 + _283; *)
uadd v158 v155 v283;
(* MEM[(uint128_t * )out_192(D) + 32B] = _158; *)
mov out192_32 v158;
(* _159 = _37 w* _218; *)
umulj v159 v37 v218;
(* _160 = _49 w* _216; *)
umulj v160 v49 v216;
(* _162 = _83 w* _212; *)
umulj v162 v83 v212;
(* _163 = _67 w* _214; *)
umulj v163 v67 v214;
(* _166 = _105 w* _210; *)
umulj v166 v105 v210;
(* _268 = _159 + _267; *)
uadd v268 v159 v267;
(* _269 = _160 + _268; *)
uadd v269 v160 v268;
(* _270 = _162 + _269; *)
uadd v270 v162 v269;
(* _271 = _163 + _270; *)
uadd v271 v163 v270;
(* _168 = _166 + _271; *)
uadd v168 v166 v271;
(* MEM[(uint128_t * )out_192(D) + 48B] = _168; *)
mov out192_48 v168;
(* _169 = _49 w* _218; *)
umulj v169 v49 v218;
(* _170 = _67 w* _216; *)
umulj v170 v67 v216;
(* _172 = _105 w* _212; *)
umulj v172 v105 v212;
(* _173 = _83 w* _214; *)
umulj v173 v83 v214;
(* _257 = _169 + _256; *)
uadd v257 v169 v256;
(* _258 = _170 + _257; *)
uadd v258 v170 v257;
(* _259 = _172 + _258; *)
uadd v259 v172 v258;
(* _176 = _173 + _259; *)
uadd v176 v173 v259;
(* MEM[(uint128_t * )out_192(D) + 64B] = _176; *)
mov out192_64 v176;
(* _177 = _67 w* _218; *)
umulj v177 v67 v218;
(* _178 = _83 w* _216; *)
umulj v178 v83 v216;
(* _180 = _105 w* _214; *)
umulj v180 v105 v214;
(* _247 = _177 + _246; *)
uadd v247 v177 v246;
(* _248 = _178 + _247; *)
uadd v248 v178 v247;
(* _182 = _180 + _248; *)
uadd v182 v180 v248;
(* MEM[(uint128_t * )out_192(D) + 80B] = _182; *)
mov out192_80 v182;
(* _183 = _83 w* _218; *)
umulj v183 v83 v218;
(* _184 = _105 w* _216; *)
umulj v184 v105 v216;
(* _237 = _183 + _236; *)
uadd v237 v183 v236;
(* _186 = _184 + _237; *)
uadd v186 v184 v237;
(* MEM[(uint128_t * )out_192(D) + 96B] = _186; *)
mov out192_96 v186;
(* _187 = _105 w* _218; *)
umulj v187 v105 v218;
(* _188 = _88 + _187; *)
uadd v188 v88 v187;
(* MEM[(uint128_t * )out_192(D) + 112B] = _188; *)
mov out192_112 v188;
(* return; *)


(* Start with unused lhs *)
mov c0 out192_0@uint128;
mov c1 out192_16@uint128;
mov c2 out192_32@uint128;
mov c3 out192_48@uint128;
mov c4 out192_64@uint128;
mov c5 out192_80@uint128;
mov c6 out192_96@uint128;
mov c7 out192_112@uint128;
mov c8 out192_128@uint128;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
      *
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
  )
  (mod (2**521 -1))
  &&
  true
}
