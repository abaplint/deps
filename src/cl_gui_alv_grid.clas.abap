CLASS cl_gui_alv_grid DEFINITION PUBLIC.

  PUBLIC SECTION.
    EVENTS toolbar EXPORTING
      VALUE(e_object) TYPE string
      VALUE(e_interactive) TYPE string.

    EVENTS user_command EXPORTING
      VALUE(e_ucomm) TYPE string.

    METHODS:
      register_edit_event,
      refresh_table_display,
      set_table_for_first_display
        IMPORTING
          is_variant      TYPE string
          i_save          TYPE string
          is_layout       TYPE string
        CHANGING
          it_fieldcatalog TYPE string
          it_outtab       TYPE string.

ENDCLASS.

CLASS cl_gui_alv_grid IMPLEMENTATION.

  METHOD register_edit_event.
    RETURN.
  ENDMETHOD.

  METHOD refresh_table_display.
    RETURN.
  ENDMETHOD.

  METHOD set_table_for_first_display.
    RETURN.
  ENDMETHOD.

ENDCLASS.