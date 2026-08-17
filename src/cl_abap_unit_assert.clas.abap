CLASS cl_abap_unit_assert DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS assert_equals
      IMPORTING
        act   TYPE any
        exp   TYPE any
        msg   TYPE any OPTIONAL
        level TYPE any OPTIONAL
        tol   TYPE any OPTIONAL
        quit  TYPE any OPTIONAL.

    CLASS-METHODS assert_true
      IMPORTING
        act   TYPE any
        msg   TYPE any OPTIONAL
        level TYPE any OPTIONAL
        quit  TYPE any OPTIONAL.

    CLASS-METHODS assert_false
      IMPORTING
        act   TYPE any
        msg   TYPE any OPTIONAL
        level TYPE any OPTIONAL
        quit  TYPE any OPTIONAL.

    CLASS-METHODS assert_initial
      IMPORTING
        act   TYPE any
        msg   TYPE any OPTIONAL
        level TYPE any OPTIONAL
        quit  TYPE any OPTIONAL.

    CLASS-METHODS assert_not_initial
      IMPORTING
        act   TYPE any
        msg   TYPE any OPTIONAL
        level TYPE any OPTIONAL
        quit  TYPE any OPTIONAL.

    CLASS-METHODS fail
      IMPORTING
        msg   TYPE any OPTIONAL
        level TYPE any OPTIONAL
        quit  TYPE any OPTIONAL.

ENDCLASS.

CLASS cl_abap_unit_assert IMPLEMENTATION.

  METHOD assert_equals.
    RETURN.
  ENDMETHOD.

  METHOD assert_true.
    RETURN.
  ENDMETHOD.

  METHOD assert_false.
    RETURN.
  ENDMETHOD.

  METHOD assert_initial.
    RETURN.
  ENDMETHOD.

  METHOD assert_not_initial.
    RETURN.
  ENDMETHOD.

  METHOD fail.
    RETURN.
  ENDMETHOD.

ENDCLASS.
