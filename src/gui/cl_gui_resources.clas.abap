CLASS cl_gui_resources DEFINITION PUBLIC
  INHERITING FROM cl_gui_object.
  PUBLIC SECTION.

    CONSTANTS col_background_level1 TYPE i VALUE 36.
    CONSTANTS col_background_level2 TYPE i VALUE 35.
    CONSTANTS col_textarea TYPE i VALUE 31.
    CONSTANTS col_tree_level1 TYPE i VALUE 60.
    CONSTANTS col_tree_level2 TYPE i VALUE 61.
    CONSTANTS col_tree_level3 TYPE i VALUE 62.
    CONSTANTS col_tree_level4 TYPE i VALUE 63.
    CONSTANTS list_col_heading TYPE i VALUE 1.
    CONSTANTS list_col_normal TYPE i VALUE 2.
    CONSTANTS list_col_background TYPE i VALUE 0.
    CONSTANTS list_col_total TYPE i VALUE 3.
    CONSTANTS list_col_key TYPE i VALUE 4.
    CONSTANTS list_col_positive TYPE i VALUE 5.
    CONSTANTS list_col_negative TYPE i VALUE 6.
    CONSTANTS list_col_group TYPE i VALUE 7.
    CONSTANTS list_intensified TYPE i VALUE 1.
    CONSTANTS list_inverse TYPE i VALUE 2.
    CONSTANTS color_form_label TYPE i VALUE 30.
    CONSTANTS color_form_entry TYPE i VALUE 31.
    CONSTANTS color_form_button TYPE i VALUE 32.
    CONSTANTS color_form_radio TYPE i VALUE 33.
    CONSTANTS color_form_checkbox TYPE i VALUE 34.
    CONSTANTS color_form_frame TYPE i VALUE 35.
    CONSTANTS color_form_window TYPE i VALUE 36.
    CONSTANTS color_form_dialog TYPE i VALUE 37.
    CONSTANTS color_form_scrollbar TYPE i VALUE 38.
    CONSTANTS color_form_menu TYPE i VALUE 39.
    CONSTANTS color_form_title TYPE i VALUE 40.
    CONSTANTS color_form_appl_toolbar TYPE i VALUE 41.
    CONSTANTS color_form_tool_tb TYPE i VALUE 42.
    CONSTANTS color_form_statusbar TYPE i VALUE 43.
    CONSTANTS color_form_menuitem TYPE i VALUE 44.
    CONSTANTS color_form_dlgtitle TYPE i VALUE 45.
    CONSTANTS color_form_affirmativ TYPE i VALUE 46.
    CONSTANTS color_form_warning TYPE i VALUE 47.
    CONSTANTS color_form_error TYPE i VALUE 48.
    CONSTANTS color_form_entry_readonly TYPE i VALUE 49.
    CONSTANTS color_form_tabbutton TYPE i VALUE 50.
    CONSTANTS color_form_frame_title TYPE i VALUE 51.
    CONSTANTS color_form_dropdown_entry TYPE i VALUE 52.
    CONSTANTS color_form_subscr_outerborder TYPE i VALUE 53.
    CONSTANTS color_form_subscr_innerborder TYPE i VALUE 54.
    CONSTANTS color_form_tabstrip TYPE i VALUE 55.
    CONSTANTS color_form_entry_bottom_border TYPE i VALUE 56.
    CONSTANTS color_style_regular TYPE i VALUE 1.
    CONSTANTS color_style_intensified TYPE i VALUE 2.
    CONSTANTS color_style_inverse TYPE i VALUE 4.
    CONSTANTS color_style_selected TYPE i VALUE 8.
    CONSTANTS color_style_disabled TYPE i VALUE 16.

    CLASS-EVENTS resources_changed.

    CLASS-METHODS get_background_color
      IMPORTING
      !id TYPE i
      !state TYPE i
      EXPORTING
      !color TYPE i
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_foreground_color
      IMPORTING
      !id TYPE i
      !state TYPE i
      EXPORTING
      !color TYPE i
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_fontsize
      EXPORTING
      !fontsize TYPE i
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_fontname
      EXPORTING
      !fontname TYPE string
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_font_infos
      IMPORTING
      !with_flush TYPE c OPTIONAL
      EXPORTING
      !fontsize TYPE i
      !fontname TYPE char80
      EXCEPTIONS
      error_get_obj
      cntl_error.
    CLASS-METHODS get_list_color
      IMPORTING
      !id TYPE i
      !state TYPE i DEFAULT 0
      EXPORTING
      !color TYPE i
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_list_colors
      EXPORTING
      !table_of_list_colors TYPE cntl_col_value_tab
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_dynpro_colors
      EXPORTING
      !col_background_level1 TYPE i
      !col_background_level2 TYPE i
      !col_textarea TYPE i
      EXCEPTIONS
      get_std_resource_error.
    CLASS-METHODS get_color
      IMPORTING
      !id TYPE i
      !state TYPE i
      !isbackcolor TYPE c
      !with_flush TYPE c OPTIONAL
      EXPORTING
      !color TYPE i
      EXCEPTIONS
      error_get_obj
      cntl_error.
    CLASS-METHODS get_colors
      IMPORTING
      !with_flush TYPE c OPTIONAL
      CHANGING
      !table_of_bg_colors TYPE cntl_col_value_tab OPTIONAL
      !table_of_fg_colors TYPE cntl_col_value_tab OPTIONAL
      EXCEPTIONS
      error_get_obj
      cntl_error.
    CLASS-METHODS on_resources_changed
      FOR EVENT global_prop_change OF cl_gui_props_consumer.
    CLASS-METHODS class_constructor.
    CLASS-METHODS get_themename
      EXPORTING
      !themename TYPE string
      EXCEPTIONS
      get_std_resource_error.
ENDCLASS.

CLASS cl_gui_resources IMPLEMENTATION.
  METHOD get_background_color.
    RETURN.
  ENDMETHOD.

  METHOD get_foreground_color.
    RETURN.
  ENDMETHOD.

  METHOD get_fontsize.
    RETURN.
  ENDMETHOD.

  METHOD get_fontname.
    RETURN.
  ENDMETHOD.

  METHOD get_font_infos.
    RETURN.
  ENDMETHOD.

  METHOD get_list_color.
    RETURN.
  ENDMETHOD.

  METHOD get_list_colors.
    RETURN.
  ENDMETHOD.

  METHOD get_dynpro_colors.
    RETURN.
  ENDMETHOD.

  METHOD get_color.
    RETURN.
  ENDMETHOD.

  METHOD get_colors.
    RETURN.
  ENDMETHOD.

  METHOD on_resources_changed.
    RETURN.
  ENDMETHOD.

  METHOD class_constructor.
    RETURN.
  ENDMETHOD.

  METHOD get_themename.
    RETURN.
  ENDMETHOD.

ENDCLASS.