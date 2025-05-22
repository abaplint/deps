CLASS cl_dd_document DEFINITION
  PUBLIC
  INHERITING FROM cl_dd_area
  CREATE PUBLIC.
  PUBLIC SECTION.

    METHODS initialize_document
      IMPORTING
        first_time TYPE c OPTIONAL
        style TYPE clike OPTIONAL
        background_color TYPE i OPTIONAL
        bds_stylesheet TYPE clike OPTIONAL
        no_margins TYPE c OPTIONAL.

  PROTECTED SECTION.
    METHODS merge_area
      CHANGING
        area TYPE REF TO cl_dd_area.
ENDCLASS.

CLASS cl_dd_document IMPLEMENTATION.
  METHOD initialize_document.
    RETURN.
  ENDMETHOD.

  METHOD merge_area.
    RETURN.
  ENDMETHOD.

ENDCLASS.