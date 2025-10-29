class CX_SY_FILE_OPEN definition public inheriting from CX_SY_FILE_ACCESS_ERROR final.
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