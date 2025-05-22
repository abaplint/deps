CLASS cl_dd_document DEFINITION
  PUBLIC
  INHERITING FROM cl_dd_area
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA area_count TYPE i READ-ONLY .
    DATA html_control TYPE REF TO cl_gui_html_viewer .
    DATA custom_container TYPE REF TO cl_gui_custom_container .

    METHODS vertical_split
      IMPORTING
      !split_area TYPE REF TO cl_dd_area
      !split_width TYPE sdydo_value DEFAULT   '30%'
      EXPORTING
      !right_area TYPE REF TO cl_dd_area
      EXCEPTIONS
      invalid_split_area
      split_area_eq_right_area
      right_area_already_used.
    METHODS horizontal_split
      IMPORTING
      !split_area TYPE REF TO cl_dd_area
      EXPORTING
      !below_area TYPE REF TO cl_dd_area
      EXCEPTIONS
      invalid_split_area
      split_area_eq_below_area
      below_area_already_used.
    METHODS merge_document.
    METHODS display_document
      IMPORTING
      !reuse_control TYPE sdydo_flag OPTIONAL
      !reuse_registration TYPE sdydo_flag OPTIONAL
      !container TYPE sdydo_value OPTIONAL
      !parent TYPE REF TO cl_gui_container OPTIONAL
      EXCEPTIONS
      html_display_error.
    METHODS export_document
      IMPORTING
      !to_filesystem TYPE sdydo_flag OPTIONAL
      EXCEPTIONS
      export_error.
    METHODS print_document
      IMPORTING
      !reuse_control TYPE sdydo_flag OPTIONAL
      EXCEPTIONS
      html_print_error.
    METHODS constructor
      IMPORTING
      !style TYPE sdydo_attribute OPTIONAL
      !background_color TYPE i OPTIONAL
      !bds_stylesheet TYPE sdydo_key OPTIONAL
      !no_margins TYPE sdydo_flag OPTIONAL.
    METHODS add_style
      IMPORTING
      !property_table TYPE sdydo_style_table OPTIONAL
      !style_class TYPE sdydo_c100 OPTIONAL
      !stylesheet TYPE sdydo_key OPTIONAL
      EXPORTING
      !stylesheet_int TYPE string.
    METHODS set_document_background
      IMPORTING
      !picture_id TYPE sdydo_key OPTIONAL.
    METHODS initialize_document
      IMPORTING
      !first_time TYPE c OPTIONAL
      !style TYPE sdydo_attribute OPTIONAL
      !background_color TYPE i OPTIONAL
      !bds_stylesheet TYPE sdydo_key OPTIONAL
      !no_margins TYPE sdydo_flag OPTIONAL.

  PROTECTED SECTION.
    CONSTANTS document_id TYPE sdydo_element_name VALUE 'A1'.
    DATA table_of_areas TYPE sdydo_object_table.
    DATA no_of_frames TYPE i.
    DATA merged TYPE sdydo_flag.
    DATA document_style TYPE sdydo_attribute.
    METHODS merge_area
      CHANGING
        area TYPE REF TO cl_dd_area.
ENDCLASS.

CLASS cl_dd_document IMPLEMENTATION.
  METHOD vertical_split.
    RETURN.
  ENDMETHOD.

  METHOD horizontal_split.
    RETURN.
  ENDMETHOD.

  METHOD merge_document.
    RETURN.
  ENDMETHOD.

  METHOD display_document.
    RETURN.
  ENDMETHOD.

  METHOD export_document.
    RETURN.
  ENDMETHOD.

  METHOD print_document.
    RETURN.
  ENDMETHOD.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD add_style.
    RETURN.
  ENDMETHOD.

  METHOD set_document_background.
    RETURN.
  ENDMETHOD.

  METHOD initialize_document.
    RETURN.
  ENDMETHOD.

  METHOD merge_area.
    RETURN.
  ENDMETHOD.

ENDCLASS.