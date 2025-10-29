CLASS cx_sy_file_open DEFINITION PUBLIC INHERITING FROM cx_sy_file_access_error FINAL.
  public section.

    methods CONSTRUCTOR
      importing
        !TEXTID like TEXTID optional
        !PREVIOUS like PREVIOUS optional
        value(FILENAME) type STRING optional
        !ERRORCODE type I optional
        !ERRORTEXT type STRING optional .
ENDCLASS.

CLASS CX_SY_FILE_OPEN IMPLEMENTATION.

method CONSTRUCTOR.
endmethod.

ENDCLASS.