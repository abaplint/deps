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

    METHODS add_area_switch
      IMPORTING
      !switch_button_label TYPE string OPTIONAL
      !switch_button_sap_icon TYPE iconname OPTIONAL
      CHANGING
      !area TYPE REF TO cl_dd_area.
    METHODS add_form
      EXPORTING
      !formarea TYPE REF TO cl_dd_form_area
      !main_url TYPE string
      !alv_offline_info TYPE string.
    METHODS add_gap
      IMPORTING
      !width TYPE i OPTIONAL
      !width_like TYPE sdydo_text_element OPTIONAL.
    METHODS add_hidden_area
      CHANGING
      !area TYPE REF TO cl_dd_area.
    METHODS add_icon
      IMPORTING
      !sap_icon TYPE iconname
      !sap_size TYPE sdydo_attribute OPTIONAL
      !sap_style TYPE sdydo_attribute OPTIONAL
      !sap_color TYPE sdydo_attribute OPTIONAL
      !alternative_text TYPE string OPTIONAL
      !tabindex TYPE i OPTIONAL.
    METHODS add_link
      IMPORTING
      !name TYPE sdydo_element_name OPTIONAL
      !url TYPE string OPTIONAL
      !tooltip TYPE string OPTIONAL
      !text TYPE sdydo_text_element OPTIONAL
      !destination_in_doc_set TYPE string OPTIONAL
      !destination_in_doc_pos TYPE string OPTIONAL
      !tabindex TYPE i OPTIONAL
      !hotkey TYPE sdydo_c1 OPTIONAL
      EXPORTING
      !link TYPE REF TO cl_dd_link_element.
    METHODS add_picture
      IMPORTING
      VALUE(picture_id) TYPE sdydo_key
      !width TYPE string OPTIONAL
      !alternative_text TYPE string OPTIONAL
      !tabindex TYPE i OPTIONAL.
    METHODS add_static_html
      IMPORTING
      !table_with_html TYPE sdydo_html_table OPTIONAL
      !string_with_html TYPE string OPTIONAL
      !html_from_dynamic_document TYPE sdydo_flag OPTIONAL
      !bds_pictures TYPE sdydo_picture_table OPTIONAL.
    METHODS add_table
      IMPORTING
      !no_of_columns TYPE i
      !with_heading TYPE sdydo_flag OPTIONAL
      !cell_background_transparent TYPE sdydo_flag DEFAULT 'X'
      !border TYPE sdydo_value DEFAULT '1'
      !width TYPE sdydo_value OPTIONAL
      !with_a11y_marks TYPE sdydo_flag OPTIONAL
      !a11y_label TYPE string OPTIONAL
      EXPORTING
      !table TYPE REF TO cl_dd_table_element
      !tablearea TYPE REF TO cl_dd_table_area
      EXCEPTIONS
      table_already_used.
    METHODS add_text
      IMPORTING
      !text TYPE sdydo_text_element OPTIONAL
      !text_table TYPE sdydo_text_table OPTIONAL
      !fix_lines TYPE sdydo_flag OPTIONAL
      !sap_style TYPE sdydo_attribute OPTIONAL
      !sap_color TYPE sdydo_attribute OPTIONAL
      !sap_fontsize TYPE sdydo_attribute OPTIONAL
      !sap_fontstyle TYPE sdydo_attribute OPTIONAL
      !sap_emphasis TYPE sdydo_attribute OPTIONAL
      !style_class TYPE sdydo_attribute OPTIONAL
      !a11y_tooltip TYPE string OPTIONAL
      CHANGING
      !document TYPE REF TO cl_dd_document OPTIONAL.
    METHODS add_text_as_heading
      IMPORTING
      !text TYPE sdydo_text_element
      !sap_color TYPE sdydo_attribute OPTIONAL
      !sap_fontstyle TYPE sdydo_attribute OPTIONAL
      !heading_level TYPE i DEFAULT 3
      !a11y_tooltip TYPE string OPTIONAL
      CHANGING
      !document TYPE REF TO cl_dd_document OPTIONAL.
    METHODS constructor
      IMPORTING
      !id TYPE sdydo_element_name
      !gui_properties TYPE sdydo_act_gui_properties OPTIONAL
      !a11y_turned TYPE sdydo_flag OPTIONAL.
    METHODS html_insert
      IMPORTING
      !contents TYPE string
      CHANGING
      !position TYPE i.
    METHODS line_with_layout
      IMPORTING
      !start TYPE sdydo_flag OPTIONAL
      !end TYPE sdydo_flag OPTIONAL
      !no_leading_break TYPE sdydo_flag DEFAULT ' '.
    METHODS new_line
      IMPORTING
      !repeat TYPE i OPTIONAL.
    METHODS no_linebreak
      IMPORTING
      !start TYPE sdydo_flag OPTIONAL
      !end TYPE sdydo_flag OPTIONAL.
    METHODS set_area_style
      IMPORTING
      !background_color TYPE i OPTIONAL
      !sap_style TYPE sdydo_attribute OPTIONAL
      !sap_color TYPE sdydo_attribute OPTIONAL
      !sap_fontsize TYPE sdydo_attribute OPTIONAL
      !sap_fontstyle TYPE sdydo_attribute OPTIONAL
      !sap_emphasis TYPE sdydo_attribute OPTIONAL
      !style_class TYPE sdydo_attribute OPTIONAL.
    METHODS set_attributes
      IMPORTING
      !color TYPE sdydo_attribute
      !size TYPE sdydo_attribute
      !style TYPE sdydo_attribute
      !emphasis TYPE sdydo_attribute OPTIONAL
      EXPORTING
      !buffer TYPE string.
    METHODS underline.
  PROTECTED SECTION.

    DATA alv_grid_offline TYPE i.
    DATA html_str TYPE string.
    DATA line TYPE string.
    DATA no_of_switches TYPE i.
ENDCLASS.

CLASS cl_dd_area IMPLEMENTATION.
  METHOD add_area_switch.
    RETURN.
  ENDMETHOD.

  METHOD add_form.
    RETURN.
  ENDMETHOD.

  METHOD add_gap.
    RETURN.
  ENDMETHOD.

  METHOD add_hidden_area.
    RETURN.
  ENDMETHOD.

  METHOD add_icon.
    RETURN.
  ENDMETHOD.

  METHOD add_link.
    RETURN.
  ENDMETHOD.

  METHOD add_picture.
    RETURN.
  ENDMETHOD.
  
  METHOD add_static_html.
    RETURN.
  ENDMETHOD.

  METHOD add_table.
    RETURN.
  ENDMETHOD.

  METHOD add_text.
    RETURN.
  ENDMETHOD.

  METHOD add_text_as_heading.
    RETURN.
  ENDMETHOD.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD html_insert.
    RETURN.
  ENDMETHOD.

  METHOD line_with_layout.
    RETURN.
  ENDMETHOD.

  METHOD new_line.
    RETURN.
  ENDMETHOD.

  METHOD no_linebreak.
    RETURN.
  ENDMETHOD.

  METHOD set_area_style.
    RETURN.
  ENDMETHOD.

  METHOD set_attributes.
    RETURN.
  ENDMETHOD.

  METHOD underline.
    RETURN.
  ENDMETHOD.
ENDCLASS.