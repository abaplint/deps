CLASS cx_sy_file_open DEFINITION PUBLIC INHERITING FROM cx_dynamic_check FINAL.
  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        !textid LIKE textid OPTIONAL
        !previous LIKE previous OPTIONAL
        VALUE(filename) TYPE string OPTIONAL
        !errorcode TYPE i OPTIONAL
        !errortext TYPE string OPTIONAL .
ENDCLASS.

CLASS cx_sy_file_open IMPLEMENTATION.
  METHOD constructor.
    RETURN.
  ENDMETHOD.
ENDCLASS.