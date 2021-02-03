CLASS cl_gui_alv_grid DEFINITION PUBLIC.

  PUBLIC SECTION.
    EVENTS toolbar EXPORTING
      VALUE(e_object) TYPE string
      VALUE(e_interactive) TYPE string.

    EVENTS user_command EXPORTING
      VALUE(e_ucomm) TYPE string.

    EVENTS double_click EXPORTING
      VALUE(e_row) TYPE i.

    CONSTANTS:
      mc_style_disabled TYPE i VALUE 1.

    METHODS:
      constructor
        IMPORTING
          i_parent TYPE any OPTIONAL
          i_applogparent TYPE any OPTIONAL
          i_appl_events TYPE any OPTIONAL,
      register_edit_event,
      set_toolbar_interactive,
      get_frontend_fieldcatalog
        EXPORTING
          et_fieldcatalog TYPE string,
      get_frontend_layout
        EXPORTING
          es_layout TYPE string,
      get_sort_criteria
        EXPORTING
          et_sort TYPE string,
      get_filter_criteria
        EXPORTING
        et_filter TYPE string,
      get_functions
        EXPORTING
          fcodes TYPE any,
      hide_functions
        IMPORTING
          functions TYPE any,
      set_focus,
      set_drop_down_table
        IMPORTING
          it_drop_down_alias TYPE any,
      get_selected_cells
        EXPORTING
          et_cell TYPE any,
      set_frontend_layout
        IMPORTING
          layout TYPE any,
      refresh_table_display
        IMPORTING
          is_stable      TYPE any
          i_soft_refresh TYPE abap_bool,
      set_ready_for_input
        IMPORTING
          i_ready_for_input TYPE any,
      check_changed_data
        EXPORTING
          e_valid TYPE any
        CHANGING
          c_refresh TYPE any,
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

  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD register_edit_event.
    RETURN.
  ENDMETHOD.

  METHOD refresh_table_display.
    RETURN.
  ENDMETHOD.

  METHOD set_table_for_first_display.
    RETURN.
  ENDMETHOD.

  METHOD get_selected_cells.
    RETURN.
  ENDMETHOD.

  METHOD set_frontend_layout.
    RETURN.
  ENDMETHOD.

  METHOD set_drop_down_table.
    RETURN.
  ENDMETHOD.

  METHOD set_focus.
    RETURN.
  ENDMETHOD.

  METHOD set_toolbar_interactive.
    RETURN.
  ENDMETHOD.

  METHOD hide_functions.
    RETURN.
  ENDMETHOD.

  METHOD get_functions.
    RETURN.
  ENDMETHOD.

  METHOD get_frontend_fieldcatalog.
    RETURN.
  ENDMETHOD.

  METHOD get_frontend_layout.
    RETURN.
  ENDMETHOD.

  METHOD get_sort_criteria.
    RETURN.
  ENDMETHOD.

  METHOD get_filter_criteria.
    RETURN.
  ENDMETHOD.

  METHOD set_ready_for_input.
    RETURN.
  ENDMETHOD.

  METHOD check_changed_data.
    RETURN.
  ENDMETHOD.

ENDCLASS.
