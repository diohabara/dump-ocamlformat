(lang dune 2.9)

(name dump_ocamlformat)

(version 0.1.1)

(generate_opam_files true)

(license MIT)

(maintainers "diohabara@gmail.com")

(authors "diohabara")

(source
 (github diohabara/dump_ocamlformat))

(documentation "https://github.com/diohabara/dump_ocamlformat#readme")

(package
 (name dump_ocamlformat)
 (depends
  (core
   (<= v0.14.1))
  (ocaml
   (<= 4.13.1))
  (ocamlformat
   (<= 0.20.1))
  (ocamlformat-rpc
   (<= 0.20.1))
  (ocaml-lsp-server
   (<= 1.10.3))
  (odoc
   (<= 2.1.0)))
 (synopsis "Dump preset configuration files for ocamlformat")
 (description "Dump preset configuration files for ocamlformat"))
