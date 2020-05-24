CLASS cl_gui_alv_grid DEFINITION PUBLIC.

  PUBLIC SECTION.
    EVENTS toolbar EXPORTING
      VALUE(e_object) TYPE string
      VALUE(e_interactive) TYPE string.

    EVENTS user_command EXPORTING
      VALUE(e_ucomm) TYPE string.

ENDCLASS.

CLASS cl_gui_alv_grid IMPLEMENTATION.

ENDCLASS.