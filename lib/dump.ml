open! Core

(** [get_version_of_ocamlformat] returns the version of installed ocamlformat. *)
let get_version_of_ocamlformat : string =
  let inp = Unix.open_process_in "ocamlformat --version" in
  let r =
    match In_channel.input_line inp with
    | Some s -> s
    | None -> failwith "Command ocamlformat not found."
  in
  In_channel.close inp;
  r
;;

(** [preset_config] returns the configuration of [.ocamlformat]. *)
let preset_config : string =
  let presets = [ "profile = janestreet"; "version = " ^ get_version_of_ocamlformat ] in
  String.concat ~sep:"\n" presets
;;

(** [dump_preset_config filename] dumps the configuration into [filename]. *)
let dump_preset_config (filename : string) : unit =
  match Sys.is_file filename with
  | `Yes -> failwith "ERROR: .ocamlformat already exists."
  | `Unknown -> failwith "ERROR: .ocamlformat may exist."
  | _ ->
    ".ocamlformat does not exists, so create it." |> print_endline;
    Out_channel.write_all filename ~data:preset_config
;;
