(* red-Parity-ISS12.ml *)
open Avalues1 (* avalues.ml of Parity *)
(* \gamma(BOT)  = {_O_(a)}                                         *)
(* \gamma(ODD)  = { 2n+1\in[min_int,max_int] | n\in Z } U {_O_(a)} *)
(* \gamma(EVEN) = { 2n\in[min_int,max_int] | n\in Z } U {_O_(a)}   *)
(* \gamma(TOP)  = [min_int,max_int] U {_O_(a),_O_(i)}              *)
open Avalues2 (* avalues.ml of initialization and simple sign *)
(* \gamma(BOT)  = {_O_(a)}                                       *)
(* \gamma(NEG)  = [min_int,-1] U {_O_(a)}                        *)
(* \gamma(POS)  = [1,max_int] U {_O_(a)}                         *)
(* \gamma(ZERO) = {0, _O_(a)}                                    *)
(* \gamma(INI)  = [min_int,max_int] U {_O_(a)}                   *)
(* \gamma(ERR)  = {_O_(a),_O_(i)}                                *)
(* \gamma(TOP)  = [min_int,max_int] U {_O_(a),_O_(i)}            *)
let reduce (p, i) =
if ((Avalues1.eq p (Avalues1.bot ())) || (Avalues2.eq i (Avalues2.bot ())))
   then ((Avalues1.bot ()), (Avalues2.bot ()))
else if ((Avalues1.eq p (Avalues1.f_NAT "1")) & (Avalues2.eq i (Avalues2.f_NAT "0")))
   then ((Avalues1.bot ()), (Avalues2.bot ()))
else if (Avalues2.eq i (Avalues2.f_NAT "0")) 
   then ((Avalues1.f_NAT "0"), i)
else (p, i)

