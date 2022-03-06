(lang dune 3.0)

(name dump_ocamlformat)

(version 0.1.3)

(generate_opam_files true)

(license MIT)

(maintainers "diohabara@gmail.com")

(authors "diohabara")

(source
 (github diohabara/dump_ocamlformat))

(package
 (name dump_ocamlformat)
 (depends
  (core
   (<= v0.14.1))
  (ocaml
   (<= 4.13.1))
  (ocamlformat
   (<= 0.20.1))
  (odoc
   (<= 2.1.0)))
 (synopsis "Dump preset configuration files for ocamlformat")
 (description "Dump preset configuration files for ocamlformat"))
