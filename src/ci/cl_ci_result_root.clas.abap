CLASS cl_ci_result_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    INTERFACES if_ci_test.

    DATA: BEGIN OF result,
            code TYPE string,
            param2 TYPE string,
          END OF result.

    DATA pseudo_remote_enabled TYPE abap_bool.

    METHODS set_info ABSTRACT
      IMPORTING
        p_info          TYPE string
      RETURNING
        VALUE(p_result) TYPE string.

  PROTECTED SECTION.

    METHODS get_text
      RETURNING
        VALUE(p_result) TYPE string.

ENDCLASS.

CLASS cl_ci_result_root IMPLEMENTATION.
  METHOD get_text.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_test~query_attributes.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_test~navigate.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_test~display_documentation.
    RETURN.
  ENDMETHOD.
ENDCLASS.