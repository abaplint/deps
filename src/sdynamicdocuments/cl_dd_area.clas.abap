CLASS cl_dd_area DEFINITION PUBLIC.
  PUBLIC SECTION.
    CONSTANTS col_background_level1 TYPE i VALUE 36.
    CONSTANTS col_background_level2 TYPE i VALUE 35.
    CONSTANTS col_textarea TYPE i VALUE 31.
    CONSTANTS col_tree_level1 TYPE i VALUE 60.
    CONSTANTS col_tree_level2 TYPE i VALUE 61.
    CONSTANTS col_tree_level3 TYPE i VALUE 62.
    CONSTANTS col_tree_level4 TYPE i VALUE 63.

    CONSTANTS cursor TYPE sdydo_attribute VALUE '<!%_CURSOR!>'.
    CONSTANTS emphasis TYPE sdydo_attribute VALUE 'EMPHASIS'.
    CONSTANTS extra_large TYPE sdydo_attribute VALUE 'EXTRA_LARGE'.
    CONSTANTS heading TYPE sdydo_attribute VALUE 'HEADING'.
    CONSTANTS key TYPE sdydo_attribute VALUE 'KEY'.
    CONSTANTS large TYPE sdydo_attribute VALUE 'LARGE'.
    CONSTANTS list_background TYPE sdydo_attribute VALUE 'LIST_BACKGROUND'.
    CONSTANTS list_background_int TYPE sdydo_attribute VALUE 'LIST_BACKGROUND_INT'.
    CONSTANTS list_background_inv TYPE sdydo_attribute VALUE 'LIST_BACKGROUND_INV'.
    CONSTANTS list_group TYPE sdydo_attribute VALUE 'LIST_GROUP'.
    CONSTANTS list_group_int TYPE sdydo_attribute VALUE 'LIST_GROUP_INT'.
    CONSTANTS list_group_inv TYPE sdydo_attribute VALUE 'LIST_GROUP_INV'.
    CONSTANTS list_heading TYPE sdydo_attribute VALUE 'LIST_HEADING'.
    CONSTANTS list_heading_int TYPE sdydo_attribute VALUE 'LIST_HEADING_INT'.
    CONSTANTS list_heading_inv TYPE sdydo_attribute VALUE 'LIST_HEADING_INV'.
    CONSTANTS list_key TYPE sdydo_attribute VALUE 'LIST_KEY'.
    CONSTANTS list_key_int TYPE sdydo_attribute VALUE 'LIST_KEY_INT'.
    CONSTANTS list_key_inv TYPE sdydo_attribute VALUE 'LIST_KEY_INV'.
    CONSTANTS list_negative TYPE sdydo_attribute VALUE 'LIST_NEGATIVE'.
    CONSTANTS list_negative_int TYPE sdydo_attribute VALUE 'LIST_NEGATIVE_INT'.
    CONSTANTS list_negative_inv TYPE sdydo_attribute VALUE 'LIST_NEGATIVE_INV'.
    CONSTANTS list_normal TYPE sdydo_attribute VALUE 'LIST_NORMAL'.
    CONSTANTS list_normal_int TYPE sdydo_attribute VALUE 'LIST_NORMAL_INT'.
    CONSTANTS list_normal_inv TYPE sdydo_attribute VALUE 'LIST_NORMAL_INV'.
    CONSTANTS list_positive TYPE sdydo_attribute VALUE 'LIST_POSITIVE'.
    CONSTANTS list_positive_int TYPE sdydo_attribute VALUE 'LIST_POSITIVE_INT'.
    CONSTANTS list_positive_inv TYPE sdydo_attribute VALUE 'LIST_POSITIVE_INV'.
    CONSTANTS list_total TYPE sdydo_attribute VALUE 'LIST_TOTAL'.
    CONSTANTS list_total_int TYPE sdydo_attribute VALUE 'LIST_TOTAL_INT'.
    CONSTANTS list_total_inv TYPE sdydo_attribute VALUE 'LIST_TOTAL_INV'.
    CONSTANTS medium TYPE sdydo_attribute VALUE 'MEDIUM'.
    CONSTANTS small TYPE sdydo_attribute VALUE 'SMALL'.
    CONSTANTS strong TYPE sdydo_attribute VALUE 'STRONG'.
    CONSTANTS success TYPE sdydo_attribute VALUE 'SUCCESS'.
    CONSTANTS warning TYPE sdydo_attribute VALUE 'WARNING'.
    CONSTANTS table_heading TYPE sdydo_attribute VALUE 'TABLE_HEADING'.
    CLASS-DATA act_gui_properties TYPE sdydo_act_gui_properties.
    CLASS-DATA act_colors TYPE sdydo_col_value_tab.
    CLASS-DATA act_list_colors TYPE sdydo_col_value_tab.
    DATA bds_stylesheet TYPE sdydo_key.
    DATA changed TYPE sdydo_flag VALUE 'X'.
    DATA classic_list TYPE sdydo_flag.
    DATA element_count TYPE i READ-ONLY.
    DATA html_table TYPE sdydo_html_table.
    DATA is_document TYPE sdydo_flag READ-ONLY.
    DATA is_tablearea TYPE sdydo_flag.
    DATA is_line_with_layout TYPE sdydo_flag.
    DATA id TYPE sdydo_element_name READ-ONLY.
    DATA scripted TYPE sdydo_flag.
    DATA table_of_elements TYPE sdydo_object_table.
    DATA table_of_pictures TYPE sdydo_picture_table.
    CONSTANTS serif TYPE sdydo_attribute VALUE 'SERIF'.
    CONSTANTS sans_serif TYPE sdydo_attribute VALUE 'SANS_SERIF'.
    CONSTANTS standard TYPE sdydo_attribute VALUE 'STANDARD'.
    DATA a11y_turned TYPE sdydo_flag.

  PROTECTED SECTION.

    DATA alv_grid_offline TYPE i.
    DATA html_str TYPE string.
    DATA line TYPE string.
    DATA no_of_switches TYPE i.
ENDCLASS.

CLASS cl_dd_area IMPLEMENTATION.

ENDCLASS.