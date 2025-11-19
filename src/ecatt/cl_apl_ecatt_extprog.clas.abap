CLASS cl_apl_ecatt_extprog DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS:
      get_args_tmpl
        EXPORTING
          ex_xml_arg_tmpl TYPE string
          ex_rc           TYPE i
          ex_errmsg       TYPE string,
      get_blob
        IMPORTING
          im_whole_data TYPE i
        EXPORTING
          ex_xml_blob   TYPE string.
ENDCLASS.

CLASS cl_apl_ecatt_extprog IMPLEMENTATION.

  METHOD get_args_tmpl.
    RETURN.
  ENDMETHOD.

  METHOD get_blob.
    RETURN.
  ENDMETHOD.

ENDCLASS.