CLASS cl_abap_refdescr DEFINITION PUBLIC FINAL CREATE PROTECTED
  INHERITING FROM cl_abap_datadescr.

  PUBLIC SECTION.
    CLASS-METHODS create
      IMPORTING
        p_referenced_type TYPE REF TO cl_abap_typedescr
      RETURNING
        VALUE(p_result)   TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation.

    CLASS-METHODS create_boxed
      IMPORTING
        p_referenced_type TYPE REF TO cl_abap_structdescr
      RETURNING
        VALUE(p_result)   TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation.

    CLASS-METHODS create_boxed_by_name
      IMPORTING
        p_referenced_type_name TYPE csequence
      RETURNING
        VALUE(p_result)        TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation
        cx_sy_unknown_type.

    CLASS-METHODS create_by_name
      IMPORTING
        p_referenced_type_name TYPE csequence
      RETURNING
        VALUE(p_result)        TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation
        cx_sy_unknown_type.

    CLASS-METHODS get
      IMPORTING
        p_referenced_type TYPE REF TO cl_abap_typedescr
      RETURNING
        VALUE(p_result)   TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation.

    CLASS-METHODS get_boxed
      IMPORTING
        p_referenced_type TYPE REF TO cl_abap_structdescr
      RETURNING
        VALUE(p_result)   TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation.

    CLASS-METHODS get_boxed_by_name
      IMPORTING
        p_referenced_type_name TYPE csequence
      RETURNING
        VALUE(p_result)        TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation
        cx_sy_unknown_type.

    CLASS-METHODS get_by_name
      IMPORTING
        p_referenced_type_name TYPE csequence
      RETURNING
        VALUE(p_result)        TYPE REF TO cl_abap_refdescr
      RAISING
        cx_sy_ref_creation
        cx_sy_unknown_type.

    METHODS get_referenced_type
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr.

    CLASS-METHODS get_ref_to_data
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_refdescr.

    CLASS-METHODS get_ref_to_object
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_refdescr.

    CLASS-METHODS load_class.

ENDCLASS.

CLASS cl_abap_refdescr IMPLEMENTATION.

  METHOD create.
    RETURN.
  ENDMETHOD.

  METHOD create_boxed.
    RETURN.
  ENDMETHOD.

  METHOD create_boxed_by_name.
    RETURN.
  ENDMETHOD.

  METHOD create_by_name.
    RETURN.
  ENDMETHOD.

  METHOD get.
    RETURN.
  ENDMETHOD.

  METHOD get_boxed.
    RETURN.
  ENDMETHOD.

  METHOD get_boxed_by_name.
    RETURN.
  ENDMETHOD.

  METHOD get_by_name.
    RETURN.
  ENDMETHOD.

  METHOD get_referenced_type.
    RETURN.
  ENDMETHOD.

  METHOD get_ref_to_data.
    RETURN.
  ENDMETHOD.

  METHOD get_ref_to_object.
    RETURN.
  ENDMETHOD.

  METHOD load_class.
    RETURN.
  ENDMETHOD.

ENDCLASS.
