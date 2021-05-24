CLASS cl_gui_alv_grid DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_row,
        rowtype TYPE c LENGTH 23,
        index TYPE n LENGTH 10,
      END OF ty_row.

    TYPES: BEGIN OF ty_column,
        fieldname TYPE c LENGTH 30,
        hierlevel TYPE c LENGTH 3,
      END OF ty_column.

    EVENTS toolbar EXPORTING
      VALUE(e_object) TYPE string
      VALUE(e_interactive) TYPE string.

    EVENTS user_command EXPORTING
      VALUE(e_ucomm) TYPE string.

    EVENTS double_click EXPORTING
      VALUE(e_row) TYPE ty_row
      VALUE(e_column) TYPE ty_column.

    EVENTS hotspot_click EXPORTING
      VALUE(e_row_id) TYPE ty_row
      VALUE(e_column_id) TYPE ty_column
      VALUE(es_row_no) TYPE i.

    CONSTANTS:
      mc_style_disabled TYPE i VALUE 1,
      mc_style_enabled TYPE i VALUE 2,
      mc_evt_modified TYPE i VALUE 3,
      mc_style_hotspot TYPE i VALUE 4,
      mc_evt_enter TYPE i VALUE 5,
      mc_style_button TYPE i VALUE 6.

    CONSTANTS:
      mc_mb_variant      TYPE string VALUE 'a',
      mc_fc_detail       TYPE string VALUE 'b',
      mc_fc_check        TYPE string VALUE 'c',
      mc_fc_refresh      TYPE string VALUE 'd',
      mc_fc_loc_cut      TYPE string VALUE 'e',
      mc_fc_loc_copy     TYPE string VALUE 'f',
      mc_fc_loc_copy_row TYPE string VALUE 'g',
      mc_mb_paste        TYPE string VALUE 'h',
      mc_fc_loc_undo     TYPE string VALUE 'i',
      mc_fc_sort_asc     TYPE string VALUE 'j',
      mc_fc_sort_dsc     TYPE string VALUE 'k',
      mc_fc_find         TYPE string VALUE 'l',
      mc_mb_filter       TYPE string VALUE 'm',
      mc_mb_sum          TYPE string VALUE 'n',
      mc_mb_subtot       TYPE string VALUE 'o',
      mc_fc_print        TYPE string VALUE 'p',
      mc_mb_view         TYPE string VALUE 'q',
      mc_mb_export       TYPE string VALUE 'r',
      mc_fc_graph        TYPE string VALUE 's',
      mc_fc_info         TYPE string VALUE 't'.

    CLASS-METHODS offline RETURNING VALUE(off) TYPE i.

    METHODS:
      constructor
        IMPORTING
          i_parent TYPE any OPTIONAL
          i_applogparent TYPE any OPTIONAL
          i_appl_events TYPE any OPTIONAL,
      register_edit_event,
      set_toolbar_interactive,
      get_selected_rows
        EXPORTING
          et_index_rows TYPE any
          et_row_no TYPE any,
      free,
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
          i_buffer_active      TYPE abap_bool OPTIONAL
          is_variant           TYPE string OPTIONAL
          i_structure_name     TYPE string OPTIONAL
          i_save               TYPE string OPTIONAL
          is_layout            TYPE string OPTIONAL
          it_toolbar_excluding TYPE string OPTIONAL
        CHANGING
          it_fieldcatalog      TYPE string
          it_outtab            TYPE string.

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

  METHOD free.
    RETURN.
  ENDMETHOD.

  METHOD get_selected_rows.
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

  METHOD offline.
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