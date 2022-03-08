CLASS cl_abap_unit_assert DEFINITION PUBLIC FINAL CREATE PUBLIC
  GLOBAL FRIENDS _if_aunit_friend_to_assert.

  PUBLIC SECTION.
    CONSTANTS rtol_default TYPE f VALUE '1.E-14'.
    CLASS-METHODS:
      abort
        IMPORTING   !msg                    TYPE csequence OPTIONAL
                    !detail                 TYPE csequence OPTIONAL
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>class
        PREFERRED PARAMETER msg,
      assert_bound
        IMPORTING   !act                    TYPE any
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_char_cp
        IMPORTING   !act                    TYPE csequence
                    !exp                    TYPE csequence
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_char_np
        IMPORTING   !act                    TYPE csequence
                    !exp                    TYPE csequence
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_differs
        IMPORTING   !act                    TYPE simple
                    !exp                    TYPE simple
                    !tol                    TYPE f OPTIONAL
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_equals
        IMPORTING   !act                    TYPE any
                    !exp                    TYPE any
                    !ignore_hash_sequence   TYPE abap_bool DEFAULT abap_false
                    !tol                    TYPE f OPTIONAL
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_equals_float
        IMPORTING   !act                    TYPE numeric
                    !exp                    TYPE numeric
                    !rtol                   TYPE numeric DEFAULT rtol_default
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_false
        IMPORTING   !act                    TYPE abap_bool
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_initial
        IMPORTING   !act                    TYPE any DEFAULT sy-subrc
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        PREFERRED PARAMETER act
        RETURNING
                    VALUE(assertion_failed) TYPE abap_bool,
      assert_not_bound
        IMPORTING   !act                    TYPE any
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_not_initial
        IMPORTING   !act                    TYPE any
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING
                    VALUE(assertion_failed) TYPE abap_bool,
      assert_number_between
        IMPORTING   !lower                  TYPE numeric
                    !upper                  TYPE numeric
                    !number                 TYPE numeric
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_subrc
        IMPORTING   VALUE(exp)              TYPE sysubrc DEFAULT 0
                    VALUE(act)              TYPE sysubrc DEFAULT sy-subrc
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
                    !symsg                  TYPE symsg OPTIONAL
        PREFERRED PARAMETER act
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_table_contains
        IMPORTING   !line                   TYPE any
                    !table                  TYPE ANY TABLE
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_table_not_contains
        IMPORTING   !line                   TYPE any
                    !table                  TYPE ANY TABLE
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_text_matches
        IMPORTING   !pattern                TYPE csequence
                    !text                   TYPE csequence
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_that
        IMPORTING   !act                    TYPE data
                    !exp                    TYPE REF TO if_constraint
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_true
        IMPORTING   !act                    TYPE abap_bool
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit                   TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      fail
        IMPORTING   !msg                TYPE csequence OPTIONAL
                    !level              TYPE aunit_level DEFAULT if_aunit_constants=>critical
                    !quit               TYPE aunit_flowctrl DEFAULT if_aunit_constants=>method
                    !detail             TYPE csequence OPTIONAL
        PREFERRED PARAMETER msg.

    TYPES:        n1                  TYPE n LENGTH 1.

  PROTECTED SECTION.

  PRIVATE SECTION.
    CONSTANTS rtol_min TYPE f VALUE '1.E-15' ##no_Text.
    CLASS-DATA fg_num_called TYPE i VALUE 0.

ENDCLASS.



CLASS cl_abap_unit_assert IMPLEMENTATION.


  METHOD abort.
    RETURN.
  ENDMETHOD.


  METHOD assert_bound.
    RETURN.
  ENDMETHOD.


  METHOD assert_char_cp.
    RETURN.
  ENDMETHOD.


  METHOD assert_char_np.
    RETURN.
  ENDMETHOD.


  METHOD assert_differs.
    RETURN.
  ENDMETHOD.


  METHOD assert_equals.
    RETURN.
  ENDMETHOD.


  METHOD assert_equals_float.
    RETURN.
  ENDMETHOD.


  METHOD assert_false.
    RETURN.
  ENDMETHOD.


  METHOD assert_initial.
    RETURN.
  ENDMETHOD.


  METHOD assert_not_bound.
    RETURN.
  ENDMETHOD.


  METHOD assert_not_initial.
    RETURN.
  ENDMETHOD.


  METHOD assert_number_between.
    RETURN.
  ENDMETHOD.


  METHOD assert_subrc.
    RETURN.
  ENDMETHOD.


  METHOD assert_table_contains.
    RETURN.
  ENDMETHOD.


  METHOD assert_table_not_contains.
    RETURN.
  ENDMETHOD.


  METHOD assert_text_matches.
    RETURN.
  ENDMETHOD.


  METHOD assert_that.
    RETURN.
  ENDMETHOD.


  METHOD assert_true.
    RETURN.
  ENDMETHOD.


  METHOD fail.
    RETURN.
  ENDMETHOD.
ENDCLASS.