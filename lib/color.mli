(** [append_reset s] appends the reset singal to [s]. *)
val append_reset : string -> string

(** [escape_of_color] is a pair list of [color] and the correspoding signal. *)
val escape_of_color : (string * string) list

(** [paint_as_red s] make [s] red color string. *)
val paint_as_red : string -> string

(** [paint_as_cyan s] make [s] cyan color string. *)
val paint_as_cyan : string -> string
