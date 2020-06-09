CLASS cl_gui_alv_grid DEFINITION PUBLIC.

  PUBLIC SECTION.
    EVENTS toolbar EXPORTING
      VALUE(e_object) TYPE string
      VALUE(e_interactive) TYPE string.

    EVENTS user_command EXPORTING
      VALUE(e_ucomm) TYPE string.

    METHODS:
      register_edit_event,
      set_table_for_first_display.

ENDCLASS.

CLASS cl_gui_alv_grid IMPLEMENTATION.

  METHOD register_edit_event.
    RETURN.
  ENDMETHOD.

  METHOD set_table_for_first_display.
    RETURN.
  ENDMETHOD.

ENDCLASS.