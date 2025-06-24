CLASS cl_gui_alv_grid DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_row,
        rowtype TYPE c LENGTH 23,
        index   TYPE n LENGTH 10,
      END OF ty_row.

    TYPES: BEGIN OF ty_column,
        fieldname TYPE c LENGTH 30,
        hierlevel TYPE c LENGTH 3,
      END OF ty_column.

    TYPES: BEGIN OF ty_row_no,
        row_id     TYPE i,
        sub_row_id TYPE i,
      END OF ty_row_no.

    EVENTS before_user_command EXPORTING
      VALUE(e_ucomm) TYPE sy-ucomm.

    EVENTS toolbar EXPORTING
      VALUE(e_object) TYPE REF TO cl_alv_event_toolbar_set
      VALUE(e_interactive) TYPE string.

    EVENTS onf4 EXPORTING
      VALUE(e_fieldvalue) TYPE lvc_value OPTIONAL
      VALUE(e_fieldname) TYPE lvc_fname OPTIONAL
      VALUE(es_row_no) TYPE lvc_s_roid OPTIONAL
      VALUE(er_event_data) TYPE REF TO cl_alv_event_data OPTIONAL
      VALUE(et_bad_cells) TYPE lvc_t_modi OPTIONAL
      VALUE(e_display) TYPE char01 OPTIONAL.

    EVENTS user_command EXPORTING
      VALUE(e_ucomm) TYPE sy-ucomm.

    EVENTS double_click EXPORTING
      VALUE(e_row) TYPE ty_row
      VALUE(es_row_no) TYPE ty_row_no
      VALUE(e_column) TYPE ty_column.

    EVENTS hotspot_click EXPORTING
      VALUE(e_row_id) TYPE ty_row
      VALUE(e_column_id) TYPE ty_column
      VALUE(es_row_no) TYPE ty_row_no.

    EVENTS data_changed EXPORTING
      VALUE(er_data_changed) TYPE REF TO cl_alv_changed_data_protocol
      VALUE(e_onf4) TYPE char01 OPTIONAL
      VALUE(e_onf4_before) TYPE char01 OPTIONAL
      VALUE(e_onf4_after) TYPE char01 OPTIONAL
      VALUE(e_ucomm) TYPE string.

    EVENTS data_changed_finished EXPORTING
      VALUE(e_modified) TYPE char01 OPTIONAL
      VALUE(et_good_cells) TYPE lvc_t_modi OPTIONAL.

    EVENTS top_of_page EXPORTING
      VALUE(e_dyndoc_id) TYPE REF TO cl_dd_document
      VALUE(table_index) TYPE i.

    EVENTS context_menu_request EXPORTING
      VALUE(e_object) TYPE REF TO cl_menu.

    EVENTS menu_button EXPORTING
      VALUE(e_object) TYPE REF TO cl_ctmenu OPTIONAL
      VALUE(e_ucomm) TYPE sy-ucomm OPTIONAL.

    EVENTS button_click EXPORTING
      VALUE(es_col_id) TYPE lvc_s_col OPTIONAL
      VALUE(es_row_no) TYPE lvc_s_roid OPTIONAL.

    EVENTS after_user_command
      EXPORTING
        VALUE(e_ucomm) TYPE sy-ucomm OPTIONAL
        VALUE(e_saved) TYPE char01 OPTIONAL
        VALUE(e_not_processed) TYPE char01 OPTIONAL.

    EVENTS ondrag
      EXPORTING
        VALUE(e_row) TYPE lvc_s_row OPTIONAL
        VALUE(e_column) TYPE lvc_s_col OPTIONAL
        VALUE(es_row_no) TYPE lvc_s_roid OPTIONAL
        VALUE(e_dragdropobj) TYPE REF TO cl_dragdropobject OPTIONAL.

    EVENTS ondrop
      EXPORTING
        VALUE(e_row) TYPE lvc_s_row OPTIONAL
        VALUE(e_column) TYPE lvc_s_col OPTIONAL
        VALUE(es_row_no) TYPE lvc_s_roid OPTIONAL
        VALUE(e_dragdropobj) TYPE REF TO cl_dragdropobject OPTIONAL.

    EVENTS ondropcomplete
      EXPORTING
        VALUE(e_row) TYPE lvc_s_row OPTIONAL
        VALUE(e_column) TYPE lvc_s_col OPTIONAL
        VALUE(es_row_no) TYPE lvc_s_roid OPTIONAL
        VALUE(e_dragdropobj) TYPE REF TO cl_dragdropobject OPTIONAL.

    CONSTANTS:
      mc_style_disabled TYPE i VALUE 1,
      mc_style_enabled  TYPE i VALUE 2,
      mc_evt_modified   TYPE i VALUE 3,
      mc_style_hotspot  TYPE i VALUE 4,
      mc_evt_enter      TYPE i VALUE 5,
      mc_style_button   TYPE i VALUE 6,
      mc_style_f4       TYPE i VALUE 7,
      mc_style_no_delete_row       TYPE i VALUE 8,
      mc_style_f4_no       TYPE i VALUE 9,
      mc_style4_link_no TYPE i VALUE 0.

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
      mc_fc_info         TYPE string VALUE 't',
      mc_fc_sum          TYPE string VALUE '1',
      mc_fc_help TYPE string VALUE '1',
      mc_fc_sort TYPE string VALUE '1',
      mc_fc_average TYPE string VALUE '1',
      mc_fc_maintain_variant TYPE string VALUE '1',
      mc_fc_maximum TYPE string VALUE '1',
      mc_fc_print_prev TYPE string VALUE '1',
      mc_fc_send TYPE string VALUE '1',
      mc_fc_subtot TYPE string VALUE '1',
      mc_fc_to_rep_tree TYPE string VALUE '1',
      mc_fc_word_processor TYPE string VALUE '1',
      mc_fc_col_optimize TYPE string VALUE '1',
      mc_fc_view_excel TYPE string VALUE '1',
      mc_fc_view_grid TYPE string VALUE '1',
      mc_fc_unfix_columns TYPE string VALUE '1',
      mc_fc_views TYPE string VALUE '1',
      mc_fc_view_crystal TYPE string VALUE '1',
      mc_fc_loc_paste TYPE string VALUE '1',
      mc_fc_loc_move_row TYPE string VALUE '1',
      mc_fc_col_invisible TYPE string VALUE '1',
      mc_fc_delete_filter TYPE string VALUE '1',
      mc_fc_loc_paste_new_row TYPE string VALUE '1',
      mc_fc_loc_append_row TYPE string VALUE 'v',
      mc_fc_loc_insert_row TYPE string VALUE 'w',
      mc_fc_minimum TYPE string VALUE '1',
      mc_fc_filter TYPE string VALUE '1',
      mc_fc_fix_columns TYPE string VALUE '1',
      mc_fc_select_all TYPE string VALUE '1',
      mc_fc_separator TYPE string VALUE '1',
      mc_fc_to_office TYPE string VALUE '1',
      mc_fc_url_copy_to_clipboard TYPE string VALUE '1',
      mc_fc_html TYPE string VALUE '1',
      mc_fc_auf TYPE string VALUE '1',
      mc_fc_call_abc TYPE string VALUE '1',
      mc_fc_call_crweb TYPE string VALUE '1',
      mc_fc_call_report TYPE string VALUE '1',
      mc_fc_deselect_all TYPE string VALUE '1',
      mc_fc_expcrdata TYPE string VALUE '1',
      mc_style_hotspot_no TYPE string VALUE '1',
      mc_fg_edit TYPE string VALUE '1',
      mc_evt_delayed_change_select TYPE string VALUE '1',
      mc_fc_expcrtempl TYPE string VALUE '1',
      mc_fc_extend TYPE string VALUE '1',
      mc_fc_load_variant TYPE string VALUE '1',
      mc_fc_pc_file TYPE string VALUE '1',
      mc_fc_view_lotus TYPE string VALUE '1',
      mc_evt_delayed_move_curr_cell TYPE string VALUE '1',
      mc_fc_print_back TYPE string VALUE '1',
      mc_fc_reprep TYPE string VALUE '1',
      mc_fc_save_variant TYPE string VALUE '1',
      mc_fc_back_classic TYPE string VALUE '1',
      mc_fc_call_chain TYPE string VALUE '1',
      mc_fc_call_crbatch TYPE string VALUE '1',
      mc_fc_call_lineitems TYPE string VALUE '1',
      mc_fc_call_master_data TYPE string VALUE '1',
      mc_fc_call_more TYPE string VALUE '1',
      mc_fc_call_xint TYPE string VALUE '1',
      mc_fc_call_xxl TYPE string VALUE '1',
      mc_fc_count TYPE string VALUE '1',
      mc_fc_current_variant TYPE string VALUE '1',
      mc_fc_data_save TYPE string VALUE '1',
      mc_fc_expcrdesig TYPE string VALUE '1',
      mc_fc_expmdb TYPE string VALUE '1',
      mc_fc_f4 TYPE string VALUE '1',
      mc_fc_variant_admin TYPE string VALUE '1',
      mc_fc_excl_all TYPE string VALUE '1',
      mc_fg_sort TYPE string VALUE '1',
      mc_fc_call_xml_export TYPE string VALUE '1',
      mc_fc_find_more TYPE string VALUE '1',
      mc_fc_loc_delete_row TYPE string VALUE 'x'.

    CLASS-METHODS offline RETURNING VALUE(off) TYPE i.

    METHODS:
      constructor
        IMPORTING
          i_parent         TYPE any
          i_applogparent   TYPE any OPTIONAL
          i_shellstyle     TYPE any OPTIONAL
          i_lifetime       TYPE any OPTIONAL
          i_parentdbg      TYPE any OPTIONAL
          i_graphicsparent TYPE any OPTIONAL
          i_name           TYPE any OPTIONAL
          i_fcat_complete  TYPE any OPTIONAL
          i_appl_events    TYPE any OPTIONAL.

    METHODS:
      register_edit_event
        IMPORTING i_event_id TYPE i,
      set_toolbar_interactive,
      is_ready_for_input RETURNING VALUE(state) TYPE i,
      is_alive RETURNING VALUE(state) TYPE i.

    TYPES ty_row_no_tt TYPE STANDARD TABLE OF ty_row_no WITH DEFAULT KEY.
    METHODS get_selected_rows
      EXPORTING
        et_index_rows TYPE any
        et_row_no     TYPE ty_row_no_tt.

    METHODS set_function_code
      CHANGING
        c_ucomm TYPE sy-ucomm.

    METHODS: free,
      get_frontend_fieldcatalog
        EXPORTING
          et_fieldcatalog TYPE lvc_t_fcat,
      get_frontend_layout
        EXPORTING
          es_layout TYPE lvc_s_layo,
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
      set_focus
        IMPORTING
          control TYPE REF TO cl_gui_control,
      set_drop_down_table
        IMPORTING
          it_drop_down       TYPE any OPTIONAL
          it_drop_down_alias TYPE any OPTIONAL,
      get_selected_cells
        EXPORTING
          et_cell TYPE any,
      set_frontend_layout
        IMPORTING
          is_layout TYPE any,
      set_frontend_fieldcatalog
        IMPORTING
          it_fieldcatalog TYPE any,
      set_gridtitle
          IMPORTING
            VALUE(i_gridtitle) TYPE any,
      set_selected_rows
        IMPORTING
          it_index_rows            TYPE any OPTIONAL
          it_row_no                TYPE any OPTIONAL
          is_keep_other_selections TYPE any OPTIONAL,
      refresh_table_display
        IMPORTING
          is_stable      TYPE any OPTIONAL
          i_soft_refresh TYPE abap_bool OPTIONAL,
      set_ready_for_input
        IMPORTING
          i_ready_for_input TYPE any OPTIONAL,
      check_changed_data
        EXPORTING
          e_valid   TYPE any
        CHANGING
          c_refresh TYPE any OPTIONAL,
      register_delayed_event
        IMPORTING
          i_event_id TYPE any,
      register_f4_for_fields
        IMPORTING
          it_f4 TYPE any,
      get_filtered_entries
        EXPORTING
          et_filtered_entries TYPE lvc_t_fidx,
      get_subtotals
        EXPORTING
          ep_collect00   TYPE REF TO data
          ep_collect01   TYPE REF TO data
          ep_collect02   TYPE REF TO data
          ep_collect03   TYPE REF TO data
          ep_collect04   TYPE REF TO data
          ep_collect05   TYPE REF TO data
          ep_collect06   TYPE REF TO data
          ep_collect07   TYPE REF TO data
          ep_collect08   TYPE REF TO data
          ep_collect09   TYPE REF TO data
          et_grouplevels TYPE lvc_t_grpl,
      set_table_for_first_display
        IMPORTING
          i_bypassing_buffer   TYPE abap_bool OPTIONAL
          i_buffer_active      TYPE abap_bool OPTIONAL
          is_variant           TYPE any OPTIONAL
          i_structure_name     TYPE string OPTIONAL
          i_save               TYPE char01 OPTIONAL
          is_layout            TYPE any OPTIONAL
          it_toolbar_excluding TYPE any OPTIONAL
          it_hyperlink         TYPE any OPTIONAL
          i_default            TYPE abap_bool DEFAULT abap_true
          is_print             TYPE any OPTIONAL
          it_special_groups    TYPE any OPTIONAL
          it_except_qinfo      TYPE any OPTIONAL
          i_consistency_check  TYPE any OPTIONAL
        CHANGING
          it_fieldcatalog      TYPE ANY TABLE OPTIONAL
          it_sort              TYPE ANY TABLE OPTIONAL
          it_filter            TYPE ANY TABLE OPTIONAL
          it_outtab            TYPE ANY TABLE OPTIONAL.

    METHODS get_current_cell
      EXPORTING
        e_row     TYPE i
        e_value   TYPE c
        e_col     TYPE i
        es_row_id TYPE lvc_s_row
        es_col_id TYPE lvc_s_col
        es_row_no TYPE lvc_s_roid.

    METHODS set_current_cell_via_id
      IMPORTING
        is_row_id    TYPE lvc_s_row OPTIONAL
        is_column_id TYPE lvc_s_col OPTIONAL
        is_row_no    TYPE lvc_s_roid OPTIONAL.

    METHODS set_visible IMPORTING visible TYPE abap_bool OPTIONAL.

    METHODS set_filter_criteria
      IMPORTING
        it_filter TYPE any.

    METHODS set_registered_events
      IMPORTING
        events TYPE any.

    METHODS set_selected_cells IMPORTING it_cells TYPE any.
    METHODS select_text_in_curr_cell.
    METHODS set_sort_criteria IMPORTING it_sort TYPE any.

    METHODS raise_event
      IMPORTING
      i_ucomm         TYPE sy-ucomm OPTIONAL
      i_user_command  TYPE any OPTIONAL
      i_not_processed TYPE any OPTIONAL
      PREFERRED PARAMETER i_ucomm.

    METHODS list_processing_events
      IMPORTING
        i_dyndoc_id  TYPE any
        i_event_name TYPE any.

    METHODS set_scroll_info_via_id
      IMPORTING
        is_row_info TYPE any OPTIONAL
        is_col_info TYPE any
        is_row_no   TYPE any OPTIONAL.

    METHODS set_selected_columns
      IMPORTING
        it_col_table             TYPE any
        is_keep_other_selections TYPE any OPTIONAL.

    METHODS get_variant
      EXPORTING
        es_variant TYPE disvariant
        e_save     TYPE char1.

    METHODS set_3d_border
      IMPORTING
        border TYPE i.

    METHODS get_selected_columns
      EXPORTING
        et_index_columns TYPE lvc_t_col.

    METHODS get_scroll_info_via_id
      EXPORTING
        es_row_no   TYPE lvc_s_roid
        es_row_info TYPE lvc_s_row
        es_col_info TYPE lvc_s_col.

  PROTECTED SECTION.
    DATA mt_outtab TYPE REF TO data.

ENDCLASS.

CLASS cl_gui_alv_grid IMPLEMENTATION.
  METHOD get_scroll_info_via_id.
    RETURN.
  ENDMETHOD.

  METHOD get_selected_columns.
    RETURN.
  ENDMETHOD.

  METHOD set_3d_border.
    RETURN.
  ENDMETHOD.

  METHOD get_variant.
    RETURN.
  ENDMETHOD.

  METHOD set_selected_columns.
    RETURN.
  ENDMETHOD.

  METHOD set_scroll_info_via_id.
    RETURN.
  ENDMETHOD.

  METHOD list_processing_events.
    RETURN.
  ENDMETHOD.

  METHOD raise_event.
    RETURN.
  ENDMETHOD.

  METHOD set_sort_criteria.
    RETURN.
  ENDMETHOD.

  METHOD select_text_in_curr_cell.
    RETURN.
  ENDMETHOD.

  METHOD set_selected_cells.
    RETURN.
  ENDMETHOD.

  METHOD set_registered_events.
    RETURN.
  ENDMETHOD.

  METHOD set_filter_criteria.
    RETURN.
  ENDMETHOD.

  METHOD set_function_code.
    RETURN.
  ENDMETHOD.

  METHOD set_visible.
    RETURN.
  ENDMETHOD.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD set_current_cell_via_id.
    RETURN.
  ENDMETHOD.

  METHOD set_gridtitle.
    RETURN.
  ENDMETHOD.

  METHOD get_current_cell.
    RETURN.
  ENDMETHOD.

  METHOD set_frontend_fieldcatalog.
    RETURN.
  ENDMETHOD.

  METHOD register_delayed_event.
    RETURN.
  ENDMETHOD.

  METHOD is_alive.
    RETURN.
  ENDMETHOD.

  METHOD register_edit_event.
    RETURN.
  ENDMETHOD.

  METHOD register_f4_for_fields.
    RETURN.
  ENDMETHOD.

  METHOD refresh_table_display.
    RETURN.
  ENDMETHOD.

  METHOD set_table_for_first_display.
    RETURN.
  ENDMETHOD.

  METHOD get_filtered_entries.
    RETURN.
  ENDMETHOD.

  METHOD get_subtotals.
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

  METHOD set_selected_rows.
    RETURN.
  ENDMETHOD.

  METHOD check_changed_data.
    RETURN.
  ENDMETHOD.

  METHOD is_ready_for_input.
    RETURN.
  ENDMETHOD.

ENDCLASS.
