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
