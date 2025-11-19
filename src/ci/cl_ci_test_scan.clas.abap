CLASS cl_ci_test_scan DEFINITION PUBLIC CREATE PUBLIC INHERITING FROM cl_ci_test_include ABSTRACT.

  PUBLIC SECTION.
    METHODS get_token_abs
      IMPORTING p_n             TYPE i
      RETURNING VALUE(p_result) TYPE string.
    METHODS get_include
      IMPORTING
        p_ref_scan              TYPE REF TO cl_ci_scan OPTIONAL
        p_level                 TYPE i OPTIONAL
      RETURNING VALUE(p_result) TYPE string.
    METHODS get_line_abs
      IMPORTING VALUE(p_n)      TYPE i
      RETURNING VALUE(p_result) TYPE i.
    METHODS get_column_abs
      IMPORTING VALUE(p_n)      TYPE i
      RETURNING VALUE(p_result) TYPE i.
    METHODS get_token_rel
      IMPORTING p_n             TYPE i
      RETURNING VALUE(p_result) TYPE string.
    METHODS keyword
      RETURNING VALUE(p_result) TYPE string.
    METHODS get_column_rel
      IMPORTING p_n             TYPE i
      RETURNING VALUE(p_result) TYPE i.
    METHODS get_line_column_abs
      IMPORTING VALUE(p_n) TYPE i
      EXPORTING
        p_line             TYPE i
        p_column           TYPE i.
    METHODS get_line_column_rel
      IMPORTING VALUE(p_n) TYPE i
      EXPORTING
        p_line             TYPE i
        p_column           TYPE i.
    METHODS get_line_rel
      IMPORTING p_n             TYPE i
      RETURNING VALUE(p_result) TYPE i.
    METHODS get RETURNING VALUE(p_result) TYPE sychar01.

*********

    DATA: BEGIN OF statement_wa,
            to    TYPE i,
            level TYPE i,
            from  TYPE i,
            type  TYPE c LENGTH 1,
          END OF statement_wa.

    DATA: BEGIN OF token_wa,
            type TYPE i,
            str TYPE string,
          END OF token_wa.

    DATA ref_scan TYPE REF TO cl_ci_scan.

    DATA: BEGIN OF structure_wa,
            type       TYPE c LENGTH 1,
            stmnt_type TYPE c LENGTH 1,
            key_start  TYPE c LENGTH 1,
            key_end    TYPE c LENGTH 1,
            stmnt_from TYPE i,
            stmnt_to   TYPE i,
            struc_from TYPE i,
            struc_to   TYPE i,
            back       TYPE i,
          END OF structure_wa.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_test_scan IMPLEMENTATION.

  METHOD get.
    RETURN.
  ENDMETHOD.

  METHOD keyword.
    RETURN.
  ENDMETHOD.

  METHOD get_token_rel.
    RETURN.
  ENDMETHOD.

  METHOD get_token_abs.
    RETURN.
  ENDMETHOD.

  METHOD get_include.
    RETURN.
  ENDMETHOD.

  METHOD get_line_abs.
    RETURN.
  ENDMETHOD.

  METHOD get_column_abs.
    RETURN.
  ENDMETHOD.

  METHOD get_column_rel.
    RETURN.
  ENDMETHOD.

  METHOD get_line_column_abs.
    RETURN.
  ENDMETHOD.

  METHOD get_line_column_rel.
    RETURN.
  ENDMETHOD.

  METHOD get_line_rel.
    RETURN.
  ENDMETHOD.
ENDCLASS.
