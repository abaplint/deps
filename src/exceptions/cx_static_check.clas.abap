CLASS cx_static_check DEFINITION PUBLIC INHERITING FROM cx_root CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        textid LIKE textid OPTIONAL
        previous LIKE previous OPTIONAL.
    METHODS get_source_position ABSTRACT
      EXPORTING
        program_name TYPE string
        include_name TYPE string
        source_line TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cx_static_check IMPLEMENTATION.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

ENDCLASS.