open! Core

let append_reset s = s ^ "\027[0m"

let escape_of_color =
  [ "black", "\027[30m"
  ; "red", "\027[31m"
  ; "green", "\027[32m"
  ; "yellow", "\027[33m"
  ; "blue", "\027[34m"
  ; "magenta", "\027[35m"
  ; "cyan", "\027[1;36m"
  ; "white", "\027[37m"
  ]
;;

let paint_as_red s =
  let color =
    match List.Assoc.find ~equal:String.equal escape_of_color "red" with
    | Some x -> x
    | None -> ""
  in
  color ^ s |> append_reset
;;

let paint_as_cyan s =
  let color =
    match List.Assoc.find ~equal:String.equal escape_of_color "cyan" with
    | Some x -> x
    | None -> ""
  in
  color ^ s |> append_reset
;;