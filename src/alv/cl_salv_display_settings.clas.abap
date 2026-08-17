CLASS cl_salv_display_settings DEFINITION PUBLIC.

  PUBLIC SECTION.
    METHODS set_list_header
      IMPORTING
        value TYPE any OPTIONAL.
    METHODS set_striped_pattern
      IMPORTING
        value TYPE any OPTIONAL.

ENDCLASS.

CLASS cl_salv_display_settings IMPLEMENTATION.

  METHOD set_list_header.
    RETURN.
  ENDMETHOD.

  METHOD set_striped_pattern.
    RETURN.
  ENDMETHOD.

ENDCLASS.
