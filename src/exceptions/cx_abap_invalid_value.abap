CLASS cx_abap_invalid_value DEFINITION PUBLIC INHERITING FROM cx_static_check CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        textid   LIKE textid OPTIONAL
        previous LIKE previous OPTIONAL
        value    TYPE string OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cx_static_check IMPLEMENTATION.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

ENDCLASS.
