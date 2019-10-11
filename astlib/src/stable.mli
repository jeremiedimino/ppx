(*$ Astlib_src_cinaps.print_astlib_mli () *)
open! StdLabels
open! Ocaml_common

module Unversioned : sig
  type apply_arg
  type arg_label
  type attribute
  type attributes
  type case
  type class_declaration
  type class_description
  type class_expr
  type class_expr_desc
  type class_field
  type class_field_desc
  type class_field_kind
  type class_infos
  type class_method_desc
  type class_signature
  type class_structure
  type class_type
  type class_type_constraint
  type class_type_declaration
  type class_type_desc
  type class_type_field
  type class_type_field_desc
  type class_type_method_desc
  type class_type_value_desc
  type class_value_desc
  type closed_flag
  type constant
  type constructor_arguments
  type constructor_declaration
  type core_type
  type core_type_desc
  type direction_flag
  type directive_argument
  type expression
  type expression_desc
  type extension
  type extension_constructor
  type extension_constructor_kind
  type include_declaration
  type include_description
  type include_infos
  type label
  type label_declaration
  type label_loc
  type loc
  type longident
  type longident_loc
  type module_binding
  type module_declaration
  type module_expr
  type module_expr_desc
  type module_type
  type module_type_declaration
  type module_type_desc
  type mutable_flag
  type object_field
  type open_description
  type override_expression
  type override_flag
  type package_type
  type package_type_constraint
  type pattern
  type pattern_desc
  type payload
  type private_flag
  type rec_flag
  type record_field_expression
  type record_field_pattern
  type row_field
  type signature
  type signature_item
  type signature_item_desc
  type string_loc
  type structure
  type structure_item
  type structure_item_desc
  type toplevel_phrase
  type type_constraint
  type type_declaration
  type type_extension
  type type_kind
  type type_param
  type value_binding
  type value_description
  type variance
  type virtual_flag
  type with_constraint
end

module V4_07 : sig
  module rec Loc : sig
    type t = Unversioned.loc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { txt : 'a; loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : txt:'a -> loc:Location.t -> 'a t
  end

  and Longident : sig
    type t = Unversioned.longident

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Lident of string
        | Ldot of longident.t * string
        | Lapply of longident.t * longident.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_lident : string -> t
    val create_ldot : longident.t -> string -> t
    val create_lapply : longident.t -> longident.t -> t
  end

  and Longident_loc : sig
    type t = Unversioned.longident_loc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (longident.t) loc
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (longident.t) loc -> t
  end

  and Rec_flag : sig
    type t = Unversioned.rec_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Nonrecursive
        | Recursive
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_nonrecursive : t
    val create_recursive : t
  end

  and Direction_flag : sig
    type t = Unversioned.direction_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Upto
        | Downto
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_upto : t
    val create_downto : t
  end

  and Private_flag : sig
    type t = Unversioned.private_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Private
        | Public
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_private : t
    val create_public : t
  end

  and Mutable_flag : sig
    type t = Unversioned.mutable_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Immutable
        | Mutable
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_immutable : t
    val create_mutable : t
  end

  and Virtual_flag : sig
    type t = Unversioned.virtual_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Virtual
        | Concrete
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_virtual : t
    val create_concrete : t
  end

  and Override_flag : sig
    type t = Unversioned.override_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Override
        | Fresh
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_override : t
    val create_fresh : t
  end

  and Closed_flag : sig
    type t = Unversioned.closed_flag

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Closed
        | Open
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_closed : t
    val create_open : t
  end

  and Label : sig
    type t = Unversioned.label

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = string
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : string -> t
  end

  and Label_loc : sig
    type t = Unversioned.label_loc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (label.t) loc
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (label.t) loc -> t
  end

  and String_loc : sig
    type t = Unversioned.string_loc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (string) loc
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (string) loc -> t
  end

  and Arg_label : sig
    type t = Unversioned.arg_label

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Nolabel of 
        | Labelled of string
        | Optional of string
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_nolabel : t
    val create_labelled : string -> t
    val create_optional : string -> t
  end

  and Variance : sig
    type t = Unversioned.variance

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Covariant
        | Contravariant
        | Invariant
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_covariant : t
    val create_contravariant : t
    val create_invariant : t
  end

  and Constant : sig
    type t = Unversioned.constant

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pconst_integer of string * char option
        | Pconst_char of char
        | Pconst_string of string * string option
        | Pconst_float of string * char option
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pconst_integer : string -> char option -> t
    val create_pconst_char : char -> t
    val create_pconst_string : string -> string option -> t
    val create_pconst_float : string -> char option -> t
  end

  and Attribute : sig
    type t = Unversioned.attribute

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (string_loc.t * payload.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (string_loc.t * payload.t) -> t
  end

  and Extension : sig
    type t = Unversioned.extension

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (string_loc.t * payload.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (string_loc.t * payload.t) -> t
  end

  and Attributes : sig
    type t = Unversioned.attributes

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = attribute.t list
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : attribute.t list -> t
  end

  and Payload : sig
    type t = Unversioned.payload

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | PStr of structure.t
        | PSig of signature.t
        | PTyp of core_type.t
        | PPat of pattern.t * expression.t option
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pstr : structure.t -> t
    val create_psig : signature.t -> t
    val create_ptyp : core_type.t -> t
    val create_ppat : pattern.t -> expression.t option -> t
  end

  and Core_type : sig
    type t = Unversioned.core_type

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { ptyp_desc : core_type_desc.t; ptyp_loc : Location.t; ptyp_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : ptyp_desc:core_type_desc.t -> ptyp_loc:Location.t -> ptyp_attributes:attributes.t -> t
  end

  and Core_type_desc : sig
    type t = Unversioned.core_type_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Ptyp_any of 
        | Ptyp_var of string
        | Ptyp_arrow of arg_label.t * core_type.t * core_type.t
        | Ptyp_tuple of core_type.t list
        | Ptyp_constr of longident_loc.t * core_type.t list
        | Ptyp_object of object_field.t list * closed_flag.t
        | Ptyp_class of longident_loc.t * core_type.t list
        | Ptyp_alias of core_type.t * string
        | Ptyp_variant of row_field.t list * closed_flag.t * label.t list option
        | Ptyp_poly of string_loc.t list * core_type.t
        | Ptyp_package of package_type.t
        | Ptyp_extension of extension.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_ptyp_any : t
    val create_ptyp_var : string -> t
    val create_ptyp_arrow : arg_label.t -> core_type.t -> core_type.t -> t
    val create_ptyp_tuple : core_type.t list -> t
    val create_ptyp_constr : longident_loc.t -> core_type.t list -> t
    val create_ptyp_object : object_field.t list -> closed_flag.t -> t
    val create_ptyp_class : longident_loc.t -> core_type.t list -> t
    val create_ptyp_alias : core_type.t -> string -> t
    val create_ptyp_variant : row_field.t list -> closed_flag.t -> label.t list option -> t
    val create_ptyp_poly : string_loc.t list -> core_type.t -> t
    val create_ptyp_package : package_type.t -> t
    val create_ptyp_extension : extension.t -> t
  end

  and Package_type : sig
    type t = Unversioned.package_type

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (longident_loc.t * package_type_constraint.t list)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (longident_loc.t * package_type_constraint.t list) -> t
  end

  and Package_type_constraint : sig
    type t = Unversioned.package_type_constraint

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (longident_loc.t * core_type.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (longident_loc.t * core_type.t) -> t
  end

  and Row_field : sig
    type t = Unversioned.row_field

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Rtag of label_loc.t * attributes.t * bool * core_type.t list
        | Rinherit of core_type.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_rtag : label_loc.t -> attributes.t -> bool -> core_type.t list -> t
    val create_rinherit : core_type.t -> t
  end

  and Object_field : sig
    type t = Unversioned.object_field

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Otag of label_loc.t * attributes.t * core_type.t
        | Oinherit of core_type.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_otag : label_loc.t -> attributes.t -> core_type.t -> t
    val create_oinherit : core_type.t -> t
  end

  and Pattern : sig
    type t = Unversioned.pattern

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { ppat_desc : pattern_desc.t; ppat_loc : Location.t; ppat_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : ppat_desc:pattern_desc.t -> ppat_loc:Location.t -> ppat_attributes:attributes.t -> t
  end

  and Pattern_desc : sig
    type t = Unversioned.pattern_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Ppat_any of 
        | Ppat_var of string_loc.t
        | Ppat_alias of pattern.t * string_loc.t
        | Ppat_constant of constant.t
        | Ppat_interval of constant.t * constant.t
        | Ppat_tuple of pattern.t list
        | Ppat_construct of longident_loc.t * pattern.t option
        | Ppat_variant of label.t * pattern.t option
        | Ppat_record of record_field_pattern.t list * closed_flag.t
        | Ppat_array of pattern.t list
        | Ppat_or of pattern.t * pattern.t
        | Ppat_constraint of pattern.t * core_type.t
        | Ppat_type of longident_loc.t
        | Ppat_lazy of pattern.t
        | Ppat_unpack of string_loc.t
        | Ppat_exception of pattern.t
        | Ppat_extension of extension.t
        | Ppat_open of longident_loc.t * pattern.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_ppat_any : t
    val create_ppat_var : string_loc.t -> t
    val create_ppat_alias : pattern.t -> string_loc.t -> t
    val create_ppat_constant : constant.t -> t
    val create_ppat_interval : constant.t -> constant.t -> t
    val create_ppat_tuple : pattern.t list -> t
    val create_ppat_construct : longident_loc.t -> pattern.t option -> t
    val create_ppat_variant : label.t -> pattern.t option -> t
    val create_ppat_record : record_field_pattern.t list -> closed_flag.t -> t
    val create_ppat_array : pattern.t list -> t
    val create_ppat_or : pattern.t -> pattern.t -> t
    val create_ppat_constraint : pattern.t -> core_type.t -> t
    val create_ppat_type : longident_loc.t -> t
    val create_ppat_lazy : pattern.t -> t
    val create_ppat_unpack : string_loc.t -> t
    val create_ppat_exception : pattern.t -> t
    val create_ppat_extension : extension.t -> t
    val create_ppat_open : longident_loc.t -> pattern.t -> t
  end

  and Record_field_pattern : sig
    type t = Unversioned.record_field_pattern

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (longident_loc.t * pattern.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (longident_loc.t * pattern.t) -> t
  end

  and Expression : sig
    type t = Unversioned.expression

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pexp_desc : expression_desc.t; pexp_loc : Location.t; pexp_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pexp_desc:expression_desc.t -> pexp_loc:Location.t -> pexp_attributes:attributes.t -> t
  end

  and Expression_desc : sig
    type t = Unversioned.expression_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pexp_ident of longident_loc.t
        | Pexp_constant of constant.t
        | Pexp_let of rec_flag.t * value_binding.t list * expression.t
        | Pexp_function of case.t list
        | Pexp_fun of arg_label.t * expression.t option * pattern.t * expression.t
        | Pexp_apply of expression.t * apply_arg.t list
        | Pexp_match of expression.t * case.t list
        | Pexp_try of expression.t * case.t list
        | Pexp_tuple of expression.t list
        | Pexp_construct of longident_loc.t * expression.t option
        | Pexp_variant of label.t * expression.t option
        | Pexp_record of record_field_expression.t list * expression.t option
        | Pexp_field of expression.t * longident_loc.t
        | Pexp_setfield of expression.t * longident_loc.t * expression.t
        | Pexp_array of expression.t list
        | Pexp_ifthenelse of expression.t * expression.t * expression.t option
        | Pexp_sequence of expression.t * expression.t
        | Pexp_while of expression.t * expression.t
        | Pexp_for of pattern.t * expression.t * expression.t * direction_flag.t * expression.t
        | Pexp_constraint of expression.t * core_type.t
        | Pexp_coerce of expression.t * core_type.t option * core_type.t
        | Pexp_send of expression.t * label_loc.t
        | Pexp_new of longident_loc.t
        | Pexp_setinstvar of label_loc.t * expression.t
        | Pexp_override of override_expression.t list
        | Pexp_letmodule of string_loc.t * module_expr.t * expression.t
        | Pexp_letexception of extension_constructor.t * expression.t
        | Pexp_assert of expression.t
        | Pexp_lazy of expression.t
        | Pexp_poly of expression.t * core_type.t option
        | Pexp_object of class_structure.t
        | Pexp_newtype of string_loc.t * expression.t
        | Pexp_pack of module_expr.t
        | Pexp_open of override_flag.t * longident_loc.t * expression.t
        | Pexp_extension of extension.t
        | Pexp_unreachable of 
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pexp_ident : longident_loc.t -> t
    val create_pexp_constant : constant.t -> t
    val create_pexp_let : rec_flag.t -> value_binding.t list -> expression.t -> t
    val create_pexp_function : case.t list -> t
    val create_pexp_fun : arg_label.t -> expression.t option -> pattern.t -> expression.t -> t
    val create_pexp_apply : expression.t -> apply_arg.t list -> t
    val create_pexp_match : expression.t -> case.t list -> t
    val create_pexp_try : expression.t -> case.t list -> t
    val create_pexp_tuple : expression.t list -> t
    val create_pexp_construct : longident_loc.t -> expression.t option -> t
    val create_pexp_variant : label.t -> expression.t option -> t
    val create_pexp_record : record_field_expression.t list -> expression.t option -> t
    val create_pexp_field : expression.t -> longident_loc.t -> t
    val create_pexp_setfield : expression.t -> longident_loc.t -> expression.t -> t
    val create_pexp_array : expression.t list -> t
    val create_pexp_ifthenelse : expression.t -> expression.t -> expression.t option -> t
    val create_pexp_sequence : expression.t -> expression.t -> t
    val create_pexp_while : expression.t -> expression.t -> t
    val create_pexp_for : pattern.t -> expression.t -> expression.t -> direction_flag.t -> expression.t -> t
    val create_pexp_constraint : expression.t -> core_type.t -> t
    val create_pexp_coerce : expression.t -> core_type.t option -> core_type.t -> t
    val create_pexp_send : expression.t -> label_loc.t -> t
    val create_pexp_new : longident_loc.t -> t
    val create_pexp_setinstvar : label_loc.t -> expression.t -> t
    val create_pexp_override : override_expression.t list -> t
    val create_pexp_letmodule : string_loc.t -> module_expr.t -> expression.t -> t
    val create_pexp_letexception : extension_constructor.t -> expression.t -> t
    val create_pexp_assert : expression.t -> t
    val create_pexp_lazy : expression.t -> t
    val create_pexp_poly : expression.t -> core_type.t option -> t
    val create_pexp_object : class_structure.t -> t
    val create_pexp_newtype : string_loc.t -> expression.t -> t
    val create_pexp_pack : module_expr.t -> t
    val create_pexp_open : override_flag.t -> longident_loc.t -> expression.t -> t
    val create_pexp_extension : extension.t -> t
    val create_pexp_unreachable : t
  end

  and Override_expression : sig
    type t = Unversioned.override_expression

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (label_loc.t * expression.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (label_loc.t * expression.t) -> t
  end

  and Record_field_expression : sig
    type t = Unversioned.record_field_expression

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (longident_loc.t * expression.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (longident_loc.t * expression.t) -> t
  end

  and Apply_arg : sig
    type t = Unversioned.apply_arg

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (arg_label.t * expression.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (arg_label.t * expression.t) -> t
  end

  and Case : sig
    type t = Unversioned.case

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pc_lhs : pattern.t; pc_guard : expression.t option; pc_rhs : expression.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pc_lhs:pattern.t -> pc_guard:expression.t option -> pc_rhs:expression.t -> t
  end

  and Value_description : sig
    type t = Unversioned.value_description

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pval_name : string_loc.t; pval_type : core_type.t; pval_prim : string list; pval_attributes : attributes.t; pval_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pval_name:string_loc.t -> pval_type:core_type.t -> pval_prim:string list -> pval_attributes:attributes.t -> pval_loc:Location.t -> t
  end

  and Type_declaration : sig
    type t = Unversioned.type_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { ptype_name : string_loc.t; ptype_params : type_param.t list; ptype_cstrs : type_constraint.t list; ptype_kind : type_kind.t; ptype_private : private_flag.t; ptype_manifest : core_type.t option; ptype_attributes : attributes.t; ptype_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : ptype_name:string_loc.t -> ptype_params:type_param.t list -> ptype_cstrs:type_constraint.t list -> ptype_kind:type_kind.t -> ptype_private:private_flag.t -> ptype_manifest:core_type.t option -> ptype_attributes:attributes.t -> ptype_loc:Location.t -> t
  end

  and Type_param : sig
    type t = Unversioned.type_param

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (core_type.t * variance.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (core_type.t * variance.t) -> t
  end

  and Type_constraint : sig
    type t = Unversioned.type_constraint

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (core_type.t * core_type.t * Location.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (core_type.t * core_type.t * Location.t) -> t
  end

  and Type_kind : sig
    type t = Unversioned.type_kind

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Ptype_abstract of 
        | Ptype_variant of constructor_declaration.t list
        | Ptype_record of label_declaration.t list
        | Ptype_open of 
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_ptype_abstract : t
    val create_ptype_variant : constructor_declaration.t list -> t
    val create_ptype_record : label_declaration.t list -> t
    val create_ptype_open : t
  end

  and Label_declaration : sig
    type t = Unversioned.label_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pld_name : string_loc.t; pld_mutable : mutable_flag.t; pld_type : core_type.t; pld_loc : Location.t; pld_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pld_name:string_loc.t -> pld_mutable:mutable_flag.t -> pld_type:core_type.t -> pld_loc:Location.t -> pld_attributes:attributes.t -> t
  end

  and Constructor_declaration : sig
    type t = Unversioned.constructor_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pcd_name : string_loc.t; pcd_args : constructor_arguments.t; pcd_res : core_type.t option; pcd_loc : Location.t; pcd_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pcd_name:string_loc.t -> pcd_args:constructor_arguments.t -> pcd_res:core_type.t option -> pcd_loc:Location.t -> pcd_attributes:attributes.t -> t
  end

  and Constructor_arguments : sig
    type t = Unversioned.constructor_arguments

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pcstr_tuple of core_type.t list
        | Pcstr_record of label_declaration.t list
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pcstr_tuple : core_type.t list -> t
    val create_pcstr_record : label_declaration.t list -> t
  end

  and Type_extension : sig
    type t = Unversioned.type_extension

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { ptyext_path : longident_loc.t; ptyext_params : type_param.t list; ptyext_constructors : extension_constructor.t list; ptyext_private : private_flag.t; ptyext_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : ptyext_path:longident_loc.t -> ptyext_params:type_param.t list -> ptyext_constructors:extension_constructor.t list -> ptyext_private:private_flag.t -> ptyext_attributes:attributes.t -> t
  end

  and Extension_constructor : sig
    type t = Unversioned.extension_constructor

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pext_name : string_loc.t; pext_kind : extension_constructor_kind.t; pext_loc : Location.t; pext_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pext_name:string_loc.t -> pext_kind:extension_constructor_kind.t -> pext_loc:Location.t -> pext_attributes:attributes.t -> t
  end

  and Extension_constructor_kind : sig
    type t = Unversioned.extension_constructor_kind

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pext_decl of constructor_arguments.t * core_type.t option
        | Pext_rebind of longident_loc.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pext_decl : constructor_arguments.t -> core_type.t option -> t
    val create_pext_rebind : longident_loc.t -> t
  end

  and Class_type : sig
    type t = Unversioned.class_type

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pcty_desc : class_type_desc.t; pcty_loc : Location.t; pcty_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pcty_desc:class_type_desc.t -> pcty_loc:Location.t -> pcty_attributes:attributes.t -> t
  end

  and Class_type_desc : sig
    type t = Unversioned.class_type_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pcty_constr of longident_loc.t * core_type.t list
        | Pcty_signature of class_signature.t
        | Pcty_arrow of arg_label.t * core_type.t * class_type.t
        | Pcty_extension of extension.t
        | Pcty_open of override_flag.t * longident_loc.t * class_type.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pcty_constr : longident_loc.t -> core_type.t list -> t
    val create_pcty_signature : class_signature.t -> t
    val create_pcty_arrow : arg_label.t -> core_type.t -> class_type.t -> t
    val create_pcty_extension : extension.t -> t
    val create_pcty_open : override_flag.t -> longident_loc.t -> class_type.t -> t
  end

  and Class_signature : sig
    type t = Unversioned.class_signature

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pcsig_self : core_type.t; pcsig_fields : class_type_field.t list }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pcsig_self:core_type.t -> pcsig_fields:class_type_field.t list -> t
  end

  and Class_type_field : sig
    type t = Unversioned.class_type_field

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pctf_desc : class_type_field_desc.t; pctf_loc : Location.t; pctf_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pctf_desc:class_type_field_desc.t -> pctf_loc:Location.t -> pctf_attributes:attributes.t -> t
  end

  and Class_type_field_desc : sig
    type t = Unversioned.class_type_field_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pctf_inherit of class_type.t
        | Pctf_val of class_type_value_desc.t
        | Pctf_method of class_type_method_desc.t
        | Pctf_constraint of class_type_constraint.t
        | Pctf_attribute of attribute.t
        | Pctf_extension of extension.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pctf_inherit : class_type.t -> t
    val create_pctf_val : class_type_value_desc.t -> t
    val create_pctf_method : class_type_method_desc.t -> t
    val create_pctf_constraint : class_type_constraint.t -> t
    val create_pctf_attribute : attribute.t -> t
    val create_pctf_extension : extension.t -> t
  end

  and Class_type_value_desc : sig
    type t = Unversioned.class_type_value_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (label_loc.t * mutable_flag.t * virtual_flag.t * core_type.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (label_loc.t * mutable_flag.t * virtual_flag.t * core_type.t) -> t
  end

  and Class_type_method_desc : sig
    type t = Unversioned.class_type_method_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (label_loc.t * private_flag.t * virtual_flag.t * core_type.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (label_loc.t * private_flag.t * virtual_flag.t * core_type.t) -> t
  end

  and Class_type_constraint : sig
    type t = Unversioned.class_type_constraint

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (core_type.t * core_type.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (core_type.t * core_type.t) -> t
  end

  and Class_infos : sig
    type t = Unversioned.class_infos

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pci_virt : virtual_flag.t; pci_params : type_param.t list; pci_name : string_loc.t; pci_expr : 'a; pci_loc : Location.t; pci_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pci_virt:virtual_flag.t -> pci_params:type_param.t list -> pci_name:string_loc.t -> pci_expr:'a -> pci_loc:Location.t -> pci_attributes:attributes.t -> 'a t
  end

  and Class_description : sig
    type t = Unversioned.class_description

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (class_type.t) class_infos
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (class_type.t) class_infos -> t
  end

  and Class_type_declaration : sig
    type t = Unversioned.class_type_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (class_type.t) class_infos
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (class_type.t) class_infos -> t
  end

  and Class_expr : sig
    type t = Unversioned.class_expr

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pcl_desc : class_expr_desc.t; pcl_loc : Location.t; pcl_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pcl_desc:class_expr_desc.t -> pcl_loc:Location.t -> pcl_attributes:attributes.t -> t
  end

  and Class_expr_desc : sig
    type t = Unversioned.class_expr_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pcl_constr of longident_loc.t * core_type.t list
        | Pcl_structure of class_structure.t
        | Pcl_fun of arg_label.t * expression.t option * pattern.t * class_expr.t
        | Pcl_apply of class_expr.t * apply_arg.t list
        | Pcl_let of rec_flag.t * value_binding.t list * class_expr.t
        | Pcl_constraint of class_expr.t * class_type.t
        | Pcl_extension of extension.t
        | Pcl_open of override_flag.t * longident_loc.t * class_expr.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pcl_constr : longident_loc.t -> core_type.t list -> t
    val create_pcl_structure : class_structure.t -> t
    val create_pcl_fun : arg_label.t -> expression.t option -> pattern.t -> class_expr.t -> t
    val create_pcl_apply : class_expr.t -> apply_arg.t list -> t
    val create_pcl_let : rec_flag.t -> value_binding.t list -> class_expr.t -> t
    val create_pcl_constraint : class_expr.t -> class_type.t -> t
    val create_pcl_extension : extension.t -> t
    val create_pcl_open : override_flag.t -> longident_loc.t -> class_expr.t -> t
  end

  and Class_structure : sig
    type t = Unversioned.class_structure

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pcstr_self : pattern.t; pcstr_fields : class_field.t list }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pcstr_self:pattern.t -> pcstr_fields:class_field.t list -> t
  end

  and Class_field : sig
    type t = Unversioned.class_field

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pcf_desc : class_field_desc.t; pcf_loc : Location.t; pcf_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pcf_desc:class_field_desc.t -> pcf_loc:Location.t -> pcf_attributes:attributes.t -> t
  end

  and Class_field_desc : sig
    type t = Unversioned.class_field_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pcf_inherit of override_flag.t * class_expr.t * string_loc.t option
        | Pcf_val of class_value_desc.t
        | Pcf_method of class_method_desc.t
        | Pcf_constraint of class_type_constraint.t
        | Pcf_initializer of expression.t
        | Pcf_attribute of attribute.t
        | Pcf_extension of extension.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pcf_inherit : override_flag.t -> class_expr.t -> string_loc.t option -> t
    val create_pcf_val : class_value_desc.t -> t
    val create_pcf_method : class_method_desc.t -> t
    val create_pcf_constraint : class_type_constraint.t -> t
    val create_pcf_initializer : expression.t -> t
    val create_pcf_attribute : attribute.t -> t
    val create_pcf_extension : extension.t -> t
  end

  and Class_value_desc : sig
    type t = Unversioned.class_value_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (label_loc.t * mutable_flag.t * class_field_kind.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (label_loc.t * mutable_flag.t * class_field_kind.t) -> t
  end

  and Class_method_desc : sig
    type t = Unversioned.class_method_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (label_loc.t * private_flag.t * class_field_kind.t)
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (label_loc.t * private_flag.t * class_field_kind.t) -> t
  end

  and Class_field_kind : sig
    type t = Unversioned.class_field_kind

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Cfk_virtual of core_type.t
        | Cfk_concrete of override_flag.t * expression.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_cfk_virtual : core_type.t -> t
    val create_cfk_concrete : override_flag.t -> expression.t -> t
  end

  and Class_declaration : sig
    type t = Unversioned.class_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (class_expr.t) class_infos
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (class_expr.t) class_infos -> t
  end

  and Module_type : sig
    type t = Unversioned.module_type

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pmty_desc : module_type_desc.t; pmty_loc : Location.t; pmty_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pmty_desc:module_type_desc.t -> pmty_loc:Location.t -> pmty_attributes:attributes.t -> t
  end

  and Module_type_desc : sig
    type t = Unversioned.module_type_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pmty_ident of longident_loc.t
        | Pmty_signature of signature.t
        | Pmty_functor of string_loc.t * module_type.t option * module_type.t
        | Pmty_with of module_type.t * with_constraint.t list
        | Pmty_typeof of module_expr.t
        | Pmty_extension of extension.t
        | Pmty_alias of longident_loc.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pmty_ident : longident_loc.t -> t
    val create_pmty_signature : signature.t -> t
    val create_pmty_functor : string_loc.t -> module_type.t option -> module_type.t -> t
    val create_pmty_with : module_type.t -> with_constraint.t list -> t
    val create_pmty_typeof : module_expr.t -> t
    val create_pmty_extension : extension.t -> t
    val create_pmty_alias : longident_loc.t -> t
  end

  and Signature : sig
    type t = Unversioned.signature

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = signature_item.t list
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : signature_item.t list -> t
  end

  and Signature_item : sig
    type t = Unversioned.signature_item

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { psig_desc : signature_item_desc.t; psig_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : psig_desc:signature_item_desc.t -> psig_loc:Location.t -> t
  end

  and Signature_item_desc : sig
    type t = Unversioned.signature_item_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Psig_value of value_description.t
        | Psig_type of rec_flag.t * type_declaration.t list
        | Psig_typext of type_extension.t
        | Psig_exception of extension_constructor.t
        | Psig_module of module_declaration.t
        | Psig_recmodule of module_declaration.t list
        | Psig_modtype of module_type_declaration.t
        | Psig_open of open_description.t
        | Psig_include of include_description.t
        | Psig_class of class_description.t list
        | Psig_class_type of class_type_declaration.t list
        | Psig_attribute of attribute.t
        | Psig_extension of extension.t * attributes.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_psig_value : value_description.t -> t
    val create_psig_type : rec_flag.t -> type_declaration.t list -> t
    val create_psig_typext : type_extension.t -> t
    val create_psig_exception : extension_constructor.t -> t
    val create_psig_module : module_declaration.t -> t
    val create_psig_recmodule : module_declaration.t list -> t
    val create_psig_modtype : module_type_declaration.t -> t
    val create_psig_open : open_description.t -> t
    val create_psig_include : include_description.t -> t
    val create_psig_class : class_description.t list -> t
    val create_psig_class_type : class_type_declaration.t list -> t
    val create_psig_attribute : attribute.t -> t
    val create_psig_extension : extension.t -> attributes.t -> t
  end

  and Module_declaration : sig
    type t = Unversioned.module_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pmd_name : string_loc.t; pmd_type : module_type.t; pmd_attributes : attributes.t; pmd_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pmd_name:string_loc.t -> pmd_type:module_type.t -> pmd_attributes:attributes.t -> pmd_loc:Location.t -> t
  end

  and Module_type_declaration : sig
    type t = Unversioned.module_type_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pmtd_name : string_loc.t; pmtd_type : module_type.t option; pmtd_attributes : attributes.t; pmtd_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pmtd_name:string_loc.t -> pmtd_type:module_type.t option -> pmtd_attributes:attributes.t -> pmtd_loc:Location.t -> t
  end

  and Open_description : sig
    type t = Unversioned.open_description

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { popen_lid : longident_loc.t; popen_override : override_flag.t; popen_loc : Location.t; popen_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : popen_lid:longident_loc.t -> popen_override:override_flag.t -> popen_loc:Location.t -> popen_attributes:attributes.t -> t
  end

  and Include_infos : sig
    type t = Unversioned.include_infos

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pincl_mod : 'a; pincl_loc : Location.t; pincl_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pincl_mod:'a -> pincl_loc:Location.t -> pincl_attributes:attributes.t -> 'a t
  end

  and Include_description : sig
    type t = Unversioned.include_description

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (module_type.t) include_infos
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (module_type.t) include_infos -> t
  end

  and Include_declaration : sig
    type t = Unversioned.include_declaration

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = (module_expr.t) include_infos
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : (module_expr.t) include_infos -> t
  end

  and With_constraint : sig
    type t = Unversioned.with_constraint

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pwith_type of longident_loc.t * type_declaration.t
        | Pwith_module of longident_loc.t * longident_loc.t
        | Pwith_typesubst of longident_loc.t * type_declaration.t
        | Pwith_modsubst of longident_loc.t * longident_loc.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pwith_type : longident_loc.t -> type_declaration.t -> t
    val create_pwith_module : longident_loc.t -> longident_loc.t -> t
    val create_pwith_typesubst : longident_loc.t -> type_declaration.t -> t
    val create_pwith_modsubst : longident_loc.t -> longident_loc.t -> t
  end

  and Module_expr : sig
    type t = Unversioned.module_expr

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pmod_desc : module_expr_desc.t; pmod_loc : Location.t; pmod_attributes : attributes.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pmod_desc:module_expr_desc.t -> pmod_loc:Location.t -> pmod_attributes:attributes.t -> t
  end

  and Module_expr_desc : sig
    type t = Unversioned.module_expr_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pmod_ident of longident_loc.t
        | Pmod_structure of structure.t
        | Pmod_functor of string_loc.t * module_type.t option * module_expr.t
        | Pmod_apply of module_expr.t * module_expr.t
        | Pmod_constraint of module_expr.t * module_type.t
        | Pmod_unpack of expression.t
        | Pmod_extension of extension.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pmod_ident : longident_loc.t -> t
    val create_pmod_structure : structure.t -> t
    val create_pmod_functor : string_loc.t -> module_type.t option -> module_expr.t -> t
    val create_pmod_apply : module_expr.t -> module_expr.t -> t
    val create_pmod_constraint : module_expr.t -> module_type.t -> t
    val create_pmod_unpack : expression.t -> t
    val create_pmod_extension : extension.t -> t
  end

  and Structure : sig
    type t = Unversioned.structure

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = structure_item.t list
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : structure_item.t list -> t
  end

  and Structure_item : sig
    type t = Unversioned.structure_item

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pstr_desc : structure_item_desc.t; pstr_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pstr_desc:structure_item_desc.t -> pstr_loc:Location.t -> t
  end

  and Structure_item_desc : sig
    type t = Unversioned.structure_item_desc

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pstr_eval of expression.t * attributes.t
        | Pstr_value of rec_flag.t * value_binding.t list
        | Pstr_primitive of value_description.t
        | Pstr_type of rec_flag.t * type_declaration.t list
        | Pstr_typext of type_extension.t
        | Pstr_exception of extension_constructor.t
        | Pstr_module of module_binding.t
        | Pstr_recmodule of module_binding.t list
        | Pstr_modtype of module_type_declaration.t
        | Pstr_open of open_description.t
        | Pstr_class of class_declaration.t list
        | Pstr_class_type of class_type_declaration.t list
        | Pstr_include of include_declaration.t
        | Pstr_attribute of attribute.t
        | Pstr_extension of extension.t * attributes.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pstr_eval : expression.t -> attributes.t -> t
    val create_pstr_value : rec_flag.t -> value_binding.t list -> t
    val create_pstr_primitive : value_description.t -> t
    val create_pstr_type : rec_flag.t -> type_declaration.t list -> t
    val create_pstr_typext : type_extension.t -> t
    val create_pstr_exception : extension_constructor.t -> t
    val create_pstr_module : module_binding.t -> t
    val create_pstr_recmodule : module_binding.t list -> t
    val create_pstr_modtype : module_type_declaration.t -> t
    val create_pstr_open : open_description.t -> t
    val create_pstr_class : class_declaration.t list -> t
    val create_pstr_class_type : class_type_declaration.t list -> t
    val create_pstr_include : include_declaration.t -> t
    val create_pstr_attribute : attribute.t -> t
    val create_pstr_extension : extension.t -> attributes.t -> t
  end

  and Value_binding : sig
    type t = Unversioned.value_binding

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pvb_pat : pattern.t; pvb_expr : expression.t; pvb_attributes : attributes.t; pvb_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pvb_pat:pattern.t -> pvb_expr:expression.t -> pvb_attributes:attributes.t -> pvb_loc:Location.t -> t
  end

  and Module_binding : sig
    type t = Unversioned.module_binding

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t = { pmb_name : string_loc.t; pmb_expr : module_expr.t; pmb_attributes : attributes.t; pmb_loc : Location.t }
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create : pmb_name:string_loc.t -> pmb_expr:module_expr.t -> pmb_attributes:attributes.t -> pmb_loc:Location.t -> t
  end

  and Toplevel_phrase : sig
    type t = Unversioned.toplevel_phrase

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Ptop_def of structure.t
        | Ptop_dir of string * directive_argument.t
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_ptop_def : structure.t -> t
    val create_ptop_dir : string -> directive_argument.t -> t
  end

  and Directive_argument : sig
    type t = Unversioned.directive_argument

    val of_ast : Versioned_ast.t -> t
    val to_ast : t -> Versioned_ast.t

    module Concrete : sig
      type t =
        | Pdir_none of 
        | Pdir_string of string
        | Pdir_int of string * char option
        | Pdir_ident of longident.t
        | Pdir_bool of bool
    end

    val of_concrete : Concrete.t -> t
    val to_concrete : t -> Concrete.t option
    val create_pdir_none : t
    val create_pdir_string : string -> t
    val create_pdir_int : string -> char option -> t
    val create_pdir_ident : longident.t -> t
    val create_pdir_bool : bool -> t
  end
end
(*$*)
