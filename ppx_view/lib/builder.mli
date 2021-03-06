(** Helpers for building Ast nodes *)

open Ppx_ast.V4_07

(** Builds an expression w/o attributes. *)
val expression : loc: Astlib.Location.t -> Expression_desc.t -> Expression.t

(** Builds a pattern w/o attributes. *)
val pattern : loc: Astlib.Location.t -> Pattern_desc.t -> Pattern.t

val longident_loc: loc: Astlib.Location.t -> Longident.t -> Longident_loc.t

(** [lident_loc ~loc s] builds a [Lident s] with loc [loc]. *)
val lident_loc : loc: Astlib.Location.t -> string -> Longident_loc.t

(** Builds an identifier prefixed by the ppx_view runtime library module
    path. *)
val view_lib_ident : loc: Astlib.Location.t -> string -> Longident_loc.t

(** Builds the longident for runtime lib's [interval]. *)
val view_lib_interval : loc: Astlib.Location.t -> Longident_loc.t

(** Builds the longident for runtime lib's [choice]. *)
val view_lib_choice : loc: Astlib.Location.t -> Longident_loc.t

(** Builds the longident for runtime lib's [larray_cons]. *)
val view_lib_larray_cons : loc: Astlib.Location.t -> Longident_loc.t

module Exp : sig
  (** Helpers for building expressions *)

  (** Builds a function application with unlabelled arguments. *)
  val apply :
    loc: Astlib.Location.t ->
    Expression.t ->
    Expression.t list ->
    Expression.t

  (** Same as [apply] but takes a function identifier instead of an arbitrary
      expression. *)
  val apply_lident :
    loc: Astlib.Location.t ->
    Longident_loc.t ->
    Expression.t list ->
    Expression.t

  (** Builds a list literal expression. *)
  val list_lit : loc: Astlib.Location.t -> Expression.t list -> Expression.t

  (** Builds [()] *)
  val unit : loc: Astlib.Location.t -> Expression.t

  (** Same as [lident_loc] but wraps it into an expression. *)
  val lident : loc: Astlib.Location.t -> string -> Expression.t

  (** Builds an expression for runtime lib's [__]. *)
  val view_lib_capture : loc: Astlib.Location.t -> Expression.t

  (** Builds an expression for runtime lib's [drop]. *)
  val view_lib_drop : loc: Astlib.Location.t -> Expression.t

  (** Builds an expression for runtime lib's [larray_nil]. *)
  val view_lib_larray_nil : loc: Astlib.Location.t -> Expression.t

  (** Builds a sequence using the runtime lib's [sequence] combinator.
      [view_lib_sequence ~loc [e1; e2; ... ei; ej]] is
      [sequence e1 (sequence e2 (... (sequence ei ej)))]*)
  val view_lib_sequence :
    loc: Astlib.Location.t ->
    Expression.t list ->
    Expression.t
end

module Pat : sig
  (** Helpers for building patterns *)

  (** Builds a variable pattern from the variable name. *)
  val var : loc: Astlib.Location.t -> string -> Pattern.t

  (** Builds a pattern for runtime lib's [Var_nil] *)
  val view_lib_var_nil : loc: Astlib.Location.t -> Pattern.t

  (** [view_lib_var_snoc ~loc p1 p2] builds [Var_snoc (p1, p2)] using the
      runtime lib's [Var_snoc]. *)
  val view_lib_var_snoc :
    loc: Astlib.Location.t ->
    Pattern.t ->
    Pattern.t ->
    Pattern.t
end
