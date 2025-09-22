(*
## Item `simple_expr: simple_expr . HASH LIDENT` (in 1651 errors)

- Derivation (1651 occurrences):
  ```
  simple_expr: simple_expr . HASH LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  lident # lident let false = UIdent
  ```
*)

lident (* X *) # (* X *) lident

(* When using `ocamlformat -g`, the following intermediate file is produced:

     $ cat /tmp/test_1.invalid-ast.ml
     (* ## Item `simple_expr: simple_expr . HASH LIDENT` (in 1651 errors)

        - Derivation (1651 occurrences): ``` simple_expr: simple_expr . HASH
        LIDENT ``` Sample sentence (implementation): ```ocaml lident # lident let
        false = UIdent ``` *)

     lident (* X *)#(* X *) lident

   The problem is that there are no spaces around `#`, which causes `#(` to be
   lexed as a single token.
*)
