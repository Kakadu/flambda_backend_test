open Stdlib

external count_set_bits
  :  (nativeint[@unboxed])
  -> (int[@untagged])
  = "caml_nativeint_popcnt" "caml_nativeint_popcnt_unboxed_to_untagged"
  [@@noalloc] [@@builtin] [@@no_effects] [@@no_coeffects]

let () = 
  print_int (count_set_bits 15n);
  print_newline ()


external const2 : int64 -> int64 -> int64x2 = "" "caml_int64x2_const2"
        [@@noalloc] [@@unboxed] [@@builtin]
