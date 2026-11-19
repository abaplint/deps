CLASS cl_abap_typedescr DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.

  PUBLIC SECTION.
    DATA absolute_name TYPE abap_abstypename READ-ONLY.
    DATA decimals TYPE i READ-ONLY.
    DATA kind TYPE abap_typecategory READ-ONLY.
    DATA length TYPE i READ-ONLY.
    DATA type_kind TYPE abap_typekind READ-ONLY.

    CONSTANTS false TYPE abap_bool VALUE abap_false.
    CONSTANTS true TYPE abap_bool VALUE abap_true.
    CONSTANTS undefined TYPE abap_bool VALUE abap_undefined.
    CONSTANTS kind_class TYPE abap_typecategory VALUE 'C'.
    CONSTANTS kind_elem TYPE abap_typecategory VALUE 'E'.
    CONSTANTS kind_intf TYPE abap_typecategory VALUE 'I'.
    CONSTANTS kind_ref TYPE abap_typecategory VALUE 'R'.
    CONSTANTS kind_struct TYPE abap_typecategory VALUE 'S'.
    CONSTANTS kind_table TYPE abap_typecategory VALUE 'T'.
    CONSTANTS typekind_any TYPE abap_typekind VALUE '~'.
    CONSTANTS typekind_char TYPE abap_typekind VALUE 'C'.
    CONSTANTS typekind_class TYPE abap_typekind VALUE '*'.
    CONSTANTS typekind_clike TYPE abap_typekind VALUE '&'.
    CONSTANTS typekind_csequence TYPE abap_typekind VALUE '?'.
    CONSTANTS typekind_data TYPE abap_typekind VALUE '#'.
    CONSTANTS typekind_date TYPE abap_typekind VALUE 'D'.
    CONSTANTS typekind_decfloat TYPE abap_typekind VALUE '/'.
    CONSTANTS typekind_decfloat16 TYPE abap_typekind VALUE 'a'.
    CONSTANTS typekind_decfloat34 TYPE abap_typekind VALUE 'e'.
    CONSTANTS typekind_dref TYPE abap_typekind VALUE 'l'.
    CONSTANTS typekind_float TYPE abap_typekind VALUE 'F'.
    CONSTANTS typekind_hex TYPE abap_typekind VALUE 'X'.
    CONSTANTS typekind_int TYPE abap_typekind VALUE 'I'.
    CONSTANTS typekind_int1 TYPE abap_typekind VALUE 'b'.
    CONSTANTS typekind_int8 TYPE abap_typekind VALUE '8'.
    CONSTANTS typekind_int2 TYPE abap_typekind VALUE 's'.
    CONSTANTS typekind_intf TYPE abap_typekind VALUE '+'.
    CONSTANTS typekind_iref TYPE abap_typekind VALUE 'm'.
    CONSTANTS typekind_num TYPE abap_typekind VALUE 'N'.
    CONSTANTS typekind_numeric TYPE abap_typekind VALUE '%'.
    CONSTANTS typekind_oref TYPE abap_typekind VALUE 'r'.
    CONSTANTS typekind_packed TYPE abap_typekind VALUE 'P'.
    CONSTANTS typekind_simple TYPE abap_typekind VALUE '$'.
    CONSTANTS typekind_string TYPE abap_typekind VALUE 'g'.
    CONSTANTS typekind_struct1 TYPE abap_typekind VALUE 'u'.
    CONSTANTS typekind_struct2 TYPE abap_typekind VALUE 'v'.
    CONSTANTS typekind_table TYPE abap_typekind VALUE 'h'.
    CONSTANTS typekind_time TYPE abap_typekind VALUE 'T'.
    CONSTANTS typekind_utclong TYPE abap_typekind VALUE 'p'.
    CONSTANTS typekind_w TYPE abap_typekind VALUE 'w'.
    CONSTANTS typekind_xsequence TYPE abap_typekind VALUE '!'.
    CONSTANTS typekind_xstring TYPE abap_typekind VALUE 'y'.
    CONSTANTS typekind_bref TYPE abap_typekind VALUE 'j'.
    CONSTANTS typekind_enum TYPE abap_typekind VALUE 'k'.
    CONSTANTS typepropkind_dbmaxlen TYPE abap_typepropkind VALUE 'D'.
    CONSTANTS typepropkind_hasclient TYPE abap_typepropkind VALUE 'C'.

    CLASS-METHODS describe_by_data
      IMPORTING
        p_data             TYPE any
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr.

    CLASS-METHODS describe_by_name
      IMPORTING
        p_name             TYPE any
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
        type_not_found.

    CLASS-METHODS describe_by_object_ref
      IMPORTING
        p_object_ref       TYPE REF TO object
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
        reference_is_initial.

    CLASS-METHODS describe_by_data_ref
      IMPORTING
        p_data_ref         TYPE REF TO data
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
        reference_is_initial.

    METHODS get_property
      IMPORTING
        p_property_kind TYPE abap_typepropkind
      RETURNING
        VALUE(p_value)  TYPE REF TO data.

    METHODS get_relative_name
      RETURNING
        VALUE(p_relative_name) TYPE string.

    METHODS is_ddic_type
      RETURNING
        VALUE(p_abap_bool) TYPE abap_bool.

    METHODS get_ddic_header
      RETURNING
        VALUE(p_header) TYPE x030l
      EXCEPTIONS
        not_found
        no_ddic_type.

    METHODS get_ddic_object
      RETURNING
        VALUE(p_object) TYPE dd_x031l_table
      EXCEPTIONS
        not_found
        no_ddic_type.

    METHODS has_property
      IMPORTING
        p_property_kind    TYPE abap_typepropkind
      RETURNING
        VALUE(p_abap_bool) TYPE abap_bool.

    METHODS is_instantiatable ABSTRACT
      RETURNING
        VALUE(p_result) TYPE abap_bool.

ENDCLASS.

CLASS cl_abap_typedescr IMPLEMENTATION.

  METHOD describe_by_data.
    RETURN.
  ENDMETHOD.

  METHOD describe_by_name.
    RETURN.
  ENDMETHOD.

  METHOD describe_by_object_ref.
    RETURN.
  ENDMETHOD.

  METHOD describe_by_data_ref.
    RETURN.
  ENDMETHOD.

  METHOD get_property.
    RETURN.
  ENDMETHOD.

  METHOD get_relative_name.
    RETURN.
  ENDMETHOD.

  METHOD is_ddic_type.
    RETURN.
  ENDMETHOD.

  METHOD get_ddic_header.
    RETURN.
  ENDMETHOD.

  METHOD get_ddic_object.
    RETURN.
  ENDMETHOD.

  METHOD has_property.
    RETURN.
  ENDMETHOD.

ENDCLASS.
