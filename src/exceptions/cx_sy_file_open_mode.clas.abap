CLASS cx_sy_file_open_mode DEFINITION PUBLIC INHERITING FROM cx_dynamic_check FINAL.
  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        !textid LIKE textid OPTIONAL
        !previous LIKE previous OPTIONAL
        VALUE(filename) TYPE string OPTIONAL.
ENDCLASS.

CLASS cx_sy_file_open_mode IMPLEMENTATION.
  METHOD constructor.
    RETURN.
  ENDMETHOD.
ENDCLASS.