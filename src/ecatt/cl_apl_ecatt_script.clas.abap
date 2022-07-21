CLASS cl_apl_ecatt_script DEFINITION PUBLIC.
  PUBLIC SECTION.
    DATA params TYPE string.

    METHODS
      get_script_text
        CHANGING scripttext TYPE any.
ENDCLASS.

CLASS cl_apl_ecatt_script IMPLEMENTATION.
  METHOD get_script_text.
    RETURN.
  ENDMETHOD.
ENDCLASS.