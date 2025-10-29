CLASS cx_sy_file_open DEFINITION PUBLIC INHERITING FROM cx_sy_file_access_error FINAL.
  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !textid LIKE textid OPTIONAL
        !previous LIKE previous OPTIONAL
        VALUE(filename) TYPE string OPTIONAL
        !errorcode TYPE i OPTIONAL
        !errortext TYPE string OPTIONAL .
ENDCLASS.

CLASS CX_SY_FILE_OPEN IMPLEMENTATION.

method CONSTRUCTOR.
endmethod.

ENDCLASS.