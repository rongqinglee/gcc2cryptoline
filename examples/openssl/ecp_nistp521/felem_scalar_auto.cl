proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in20_0@uint64 _;
mov in20_8@uint64 _;
mov in20_16@uint64 _;
mov in20_24@uint64 _;
mov in20_32@uint64 _;
mov in20_40@uint64 _;
mov in20_48@uint64 _;
mov in20_56@uint64 _;
mov in20_64@uint64 _;
mov scalar21@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_20(D); *)
mov v1 in20_0;
(* _2 = _1 * scalar_21(D); *)
umul v2 v1 scalar21;
(* *out_22(D) = _2; *)
mov out22_0 v2;
(* _3 = MEM[(const limb * )in_20(D) + 8B]; *)
mov v3 in20_8;
(* _4 = _3 * scalar_21(D); *)
umul v4 v3 scalar21;
(* MEM[(limb * )out_22(D) + 8B] = _4; *)
mov out22_8 v4;
(* _5 = MEM[(const limb * )in_20(D) + 16B]; *)
mov v5 in20_16;
(* _6 = _5 * scalar_21(D); *)
umul v6 v5 scalar21;
(* MEM[(limb * )out_22(D) + 16B] = _6; *)
mov out22_16 v6;
(* _7 = MEM[(const limb * )in_20(D) + 24B]; *)
mov v7 in20_24;
(* _8 = _7 * scalar_21(D); *)
umul v8 v7 scalar21;
(* MEM[(limb * )out_22(D) + 24B] = _8; *)
mov out22_24 v8;
(* _9 = MEM[(const limb * )in_20(D) + 32B]; *)
mov v9 in20_32;
(* _10 = _9 * scalar_21(D); *)
umul v10 v9 scalar21;
(* MEM[(limb * )out_22(D) + 32B] = _10; *)
mov out22_32 v10;
(* _11 = MEM[(const limb * )in_20(D) + 40B]; *)
mov v11 in20_40;
(* _12 = _11 * scalar_21(D); *)
umul v12 v11 scalar21;
(* MEM[(limb * )out_22(D) + 40B] = _12; *)
mov out22_40 v12;
(* _13 = MEM[(const limb * )in_20(D) + 48B]; *)
mov v13 in20_48;
(* _14 = _13 * scalar_21(D); *)
umul v14 v13 scalar21;
(* MEM[(limb * )out_22(D) + 48B] = _14; *)
mov out22_48 v14;
(* _15 = MEM[(const limb * )in_20(D) + 56B]; *)
mov v15 in20_56;
(* _16 = _15 * scalar_21(D); *)
umul v16 v15 scalar21;
(* MEM[(limb * )out_22(D) + 56B] = _16; *)
mov out22_56 v16;
(* _17 = MEM[(const limb * )in_20(D) + 64B]; *)
mov v17 in20_64;
(* _18 = _17 * scalar_21(D); *)
umul v18 v17 scalar21;
(* MEM[(limb * )out_22(D) + 64B] = _18; *)
mov out22_64 v18;
(* return; *)


(* Start with unused lhs *)
mov _ out22_0@uint64;
mov _ out22_8@uint64;
mov _ out22_16@uint64;
mov _ out22_24@uint64;
mov _ out22_32@uint64;
mov _ out22_40@uint64;
mov _ out22_48@uint64;
mov _ out22_56@uint64;
mov _ out22_64@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}
