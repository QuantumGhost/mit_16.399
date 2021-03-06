(* fixpoint.mli *)
open Aenv
(* lfp x c f : iterative computation of the c-least fixpoint of f *)
(* c-greater than or equal to the prefixpoint x (f(x) >= x)       *)
val lfp : t -> (t -> t -> bool) -> (t -> t) -> t
(* gfp x c f : iterative computation of the c-greateast fixpoint  *)
(* of f c-less than or equal to the postfixpoint x (f(x) <= x)    *)
val gfp : t -> (t -> t -> bool) -> (t -> t) -> t
