CLASS cl_abap_elemdescr DEFINITION PUBLIC CREATE PRIVATE
  INHERITING FROM cl_abap_datadescr.

  PUBLIC SECTION.
    CONSTANTS type_x_max_length TYPE i VALUE 524287.
    CONSTANTS type_c_max_length TYPE i VALUE 262143.
    CONSTANTS type_n_max_length TYPE i VALUE 262143.
    CONSTANTS type_p_max_length TYPE i VALUE 16.
    CONSTANTS type_p_max_decimals TYPE i VALUE 14.

    DATA edit_mask TYPE abap_editmask READ-ONLY.
    DATA help_id TYPE abap_helpid READ-ONLY.
    DATA output_length TYPE i READ-ONLY.

    CLASS-METHODS load_class.

    METHODS get_ddic_field
      IMPORTING
        VALUE(p_langu)    TYPE langu DEFAULT sy-langu
      RETURNING
        VALUE(p_flddescr) TYPE dfies
      EXCEPTIONS
        not_found
        no_ddic_type.

    METHODS get_ddic_fixed_values
      IMPORTING
        VALUE(p_langu)        TYPE langu DEFAULT sy-langu
      RETURNING
        VALUE(p_fixed_values) TYPE ddfixvalues
      EXCEPTIONS
        not_found
        no_ddic_type.

    CLASS-METHODS get_string
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_xstring
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_int1
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_int2
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_i
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_int8
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_f
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_decfloat16
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_decfloat34
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_d
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_t
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_c
      IMPORTING
        p_length        TYPE i
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
        cx_parameter_invalid_range.

    CLASS-METHODS get_n
      IMPORTING
        p_length        TYPE i
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
        cx_parameter_invalid_range.

    CLASS-METHODS get_x
      IMPORTING
        p_length        TYPE i
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
        cx_parameter_invalid_range.

    CLASS-METHODS get_p
      IMPORTING
        p_length        TYPE i
        p_decimals      TYPE i
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
        cx_parameter_invalid_range.

    CLASS-METHODS get_utclong
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr.

    CLASS-METHODS get_by_kind
      IMPORTING
        p_type_kind     TYPE abap_typekind
        p_length        TYPE i OPTIONAL
        p_decimals      TYPE i OPTIONAL
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
        cx_parameter_invalid_range.

    METHODS is_ddic_type REDEFINITION.

ENDCLASS.

CLASS cl_abap_elemdescr IMPLEMENTATION.

  METHOD load_class.
    RETURN.
  ENDMETHOD.

  METHOD get_ddic_field.
    RETURN.
  ENDMETHOD.

  METHOD get_ddic_fixed_values.
    RETURN.
  ENDMETHOD.

  METHOD get_string.
    RETURN.
  ENDMETHOD.

  METHOD get_xstring.
    RETURN.
  ENDMETHOD.

  METHOD get_int1.
    RETURN.
  ENDMETHOD.

  METHOD get_int2.
    RETURN.
  ENDMETHOD.

  METHOD get_i.
    RETURN.
  ENDMETHOD.

  METHOD get_int8.
    RETURN.
  ENDMETHOD.

  METHOD get_f.
    RETURN.
  ENDMETHOD.

  METHOD get_decfloat16.
    RETURN.
  ENDMETHOD.

  METHOD get_decfloat34.
    RETURN.
  ENDMETHOD.

  METHOD get_d.
    RETURN.
  ENDMETHOD.

  METHOD get_t.
    RETURN.
  ENDMETHOD.

  METHOD get_c.
    RETURN.
  ENDMETHOD.

  METHOD get_n.
    RETURN.
  ENDMETHOD.

  METHOD get_x.
    RETURN.
  ENDMETHOD.

  METHOD get_p.
    RETURN.
  ENDMETHOD.

  METHOD get_utclong.
    RETURN.
  ENDMETHOD.

  METHOD get_by_kind.
    RETURN.
  ENDMETHOD.

  METHOD is_ddic_type.
    RETURN.
  ENDMETHOD.

ENDCLASS.
