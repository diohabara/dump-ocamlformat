(** [get_version_of_ocamlformat] returns the current version of ocamlforamt. *)
val get_version_of_ocamlformat : string

(** [preset_config] returns preset config for ocamlformat. *)
val preset_config : string

(** [dump_preset_config filename] dumps config into [filename]. *)
val dump_preset_config : string -> unit
