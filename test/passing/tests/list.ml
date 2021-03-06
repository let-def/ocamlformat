let f x = match x with P ({xxxxxx} :: {yyyyyyyy} :: zzzzzzz) -> true

let f x =
  match x with
  | P
      ({xxxxxxxxxxxxxxxxxxxxxx}
      :: {yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy}
         :: zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz ) ->
      true

let f x = match x with P [{xxxxxx}; {yyyyyyyy}] -> true

let x = (x :: y) :: z

let x = match x with (x :: y) :: z -> ()

let _ = [a; b; c]

let _ = match x with Atom x -> x | List [Atom x; Atom y] -> x ^ y

let _ = match x with Atom x -> x | List (Atom x :: Atom y :: rest) -> x ^ y

let _ = match x with (x :: y) :: z -> true

let x = function
  | [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
    ; [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
      ; (* ", sed do eiusmod tempor incididunt ut labore et dolore"; *)
        "sed do eiusmod tempor incididunt ut labore et dolore"
        (* " magna aliqua. Ut enim ad minim veniam, quis nostrud "; *)
        (* "exercitation ullamco laboris nisi ut aliquip ex ea commodo " *)
      ]
    ; (* ", sed do eiusmod tempor incididunt ut labore et dolore"; *)
      "sed do eiusmod tempor incididunt ut labore et dolore"
      (* " magna aliqua. Ut enim ad minim veniam, quis nostrud "; *)
      (* "exercitation ullamco laboris nisi ut aliquip ex ea commodo " *) ]
    ->
      ()

[@@@ocamlformat "space-around-lists=true"]

let x = function
  | [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
    ; [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
      ; (* ", sed do eiusmod tempor incididunt ut labore et dolore"; *)
        "sed do eiusmod tempor incididunt ut labore et dolore"
        (* " magna aliqua. Ut enim ad minim veniam, quis nostrud "; *)
        (* "exercitation ullamco laboris nisi ut aliquip ex ea commodo " *)
      ]
    ; (* ", sed do eiusmod tempor incididunt ut labore et dolore"; *)
      "sed do eiusmod tempor incididunt ut labore et dolore"
      (* " magna aliqua. Ut enim ad minim veniam, quis nostrud "; *)
      (* "exercitation ullamco laboris nisi ut aliquip ex ea commodo " *)
    ] ->
      ()
  | [ [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit" ]
    ; (* ", sed do eiusmod tempor incididunt ut labore et dolore"; *)
      "sed do eiusmod tempor incididunt ut labore et dolore"
      (* " magna aliqua. Ut enim ad minim veniam, quis nostrud "; *)
      (* "exercitation ullamco laboris nisi ut aliquip ex ea commodo " *)
    ] ->
      ()

let _ = f ~x:(a :: b) (* comment *) ~y

let _ = f ((* comment *) x :: y)

let _ = abc :: def (* :: ghi *) :: jkl
