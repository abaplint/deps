CLASS cx_static_check DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    METHODS get_source_position ABSTRACT
      EXPORTING
        program_name TYPE string
        include_name TYPE string
        source_line TYPE string.
    METHODS get_longtext ABSTRACT
      RETURNING
        VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cx_static_check IMPLEMENTATION.

ENDCLASS.
