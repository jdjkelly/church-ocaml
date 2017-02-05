open Church;;
open Printf;;

(* Booleans *)
assert ((t() 1 0) = 1);;
assert ((t() "first" "second") = "first");;
assert ((f() 0 1) = 1);;
assert ((f() "first" "second") = "second");;

(* Conditionals *)
assert ((fi() t "first" "second") = "first");;
assert ((fi() t 1 0) = 1);;
assert ((fi() f "first" "second") = "second");;
assert ((fi() f 0 1) = 1);;

(* Numbers *)
assert((count() c0) = 0);;
assert((count() c1) = 1);;
assert((count() c2) = 2);;
assert((count() c3) = 3);;

printf "👍\n"
