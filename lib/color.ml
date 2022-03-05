open! Core

let append_reset s = s ^ "\\u001b[0m"

let escape_of_color =
  [ "black", "\\u001b[30m"
  ; "red", "\\u001b[31m"
  ; "green", "\\u001b[32m"
  ; "yellow", "\\u001b[33m"
  ; "blue", "\\u001b[34m"
  ; "magenta", "\\u001b[35m"
  ; "cyan", "\\u001b[36m"
  ; "white", "\\u001b[37m"
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