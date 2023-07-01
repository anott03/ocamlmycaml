(* the compiler won't compile this if there are unused functions or variables *)

(* let rec range a b = *)
(*     if a > b then [] *)
(*     else a :: range (a+1) b *)
(* ;; *)

(* let divide x y = match y with *)
(*     | 0. -> None *)
(*     | _ -> Some (x /. y);; *)
(**)
(* let res = match divide 5.25 0.25 with *)
(*     | None -> 0. *)
(*     | Some x -> x;; *)


(* type running_sum = { *)
(*     mutable sum: float; *)
(*     mutable sum_sq: float; *)
(*     mutable samples: int; *)
(* };; *)
(* let create () = { sum = 0.; sum_sq = 0.; samples = 0 };; *)
(* let update rsum x = *)
(*     rsum.samples <- rsum.samples + 1; *)
(*     rsum .sum    <- rsum.sum +. x; *)
(*     rsum.sum_sq  <- rsum.sum_sq +. x *. x;; *)
(**)
(* let rs = create();; *)
(* update rs 2.;; *)
(**)
(* let print_rsum rs = *)
(*     print_float rs.sum; *)
(*     print_float rs.sum_sq; *)
(*     print_int rs.samples;; *)

let x = { contents = 0 };;
let y = ref x;;

(* there is a way to do this with refs *)
let rec sum list =
    if list = [] then 0
    else List.hd list + sum(List.tl list);;

let () =
    (* print_list (range 0 10);; *)
    (* print_string "\n";; *)
    (* print_rsum rs;; *)
    print_int(sum [1; 2; 3]);;
    print_char '\n';;
