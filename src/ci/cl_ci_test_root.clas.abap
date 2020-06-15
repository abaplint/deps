CLASS cl_ci_test_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    DATA: category          TYPE string,
          description       TYPE string,
          object_type       TYPE string,
          object_name       TYPE string,
          version           TYPE string,
          position          TYPE string,
          has_documentation TYPE abap_bool,
          has_attributes    TYPE abap_bool,
          attributes_ok     TYPE abap_bool,
          has_display_consolidation TYPE abap_bool,
          program_name      TYPE string,
          myname            TYPE string,
          scimessages       TYPE STANDARD TABLE OF string.

    CONSTANTS:
      c_note    TYPE c LENGTH 1 VALUE '?',
      c_warning TYPE c LENGTH 1 VALUE '?',
      c_error   TYPE c LENGTH 1 VALUE '?'.

    METHODS
      get_message_text
        ABSTRACT
        IMPORTING
          p_test TYPE string
          p_code TYPE string
        EXPORTING
          p_text TYPE string.

    METHODS
      get_attributes
        ABSTRACT
        RETURNING
          VALUE(p_attributes) TYPE string.

    METHODS
      put_attributes
        ABSTRACT
        IMPORTING
          p_attributes TYPE string.

    METHODS
      run
        ABSTRACT.

    METHODS
      get_result_node
        ABSTRACT
        IMPORTING
          p_kind TYPE c
        RETURNING
          VALUE(p_result) TYPE REF TO cl_ci_result_root.

    EVENTS message EXPORTING
      VALUE(p_sub_obj_type) TYPE string
      VALUE(p_sub_obj_name) TYPE string
      VALUE(p_position) TYPE string
      VALUE(p_line) TYPE string
      VALUE(p_column) TYPE string
      VALUE(p_errcnt) TYPE string
      VALUE(p_kind) TYPE string
      VALUE(p_test) TYPE string
      VALUE(p_code) TYPE string
      VALUE(p_suppress) TYPE string
      VALUE(p_param_1) TYPE string
      VALUE(p_param_2) TYPE string
      VALUE(p_param_3) TYPE string
      VALUE(p_param_4) TYPE string
      VALUE(p_inclspec) TYPE string.

    METHODS
      inform
        ABSTRACT
        IMPORTING
          p_sub_obj_type TYPE string
          p_sub_obj_name TYPE string
          p_position     TYPE string
          p_line         TYPE string
          p_column       TYPE string
          p_errcnt       TYPE string
          p_kind         TYPE string
          p_test         TYPE string
          p_code         TYPE string
          p_suppress     TYPE string
          p_param_1      TYPE string
          p_param_2      TYPE string
          p_param_3      TYPE string
          p_param_4      TYPE string
          p_inclspec     TYPE string.

    METHODS
      consolidate_for_display
        ABSTRACT
        IMPORTING
          p_sort_by_user TYPE string
          p_sort_by_package TYPE string
          p_sort_by_object TYPE string
        CHANGING
          p_results TYPE ANY TABLE
          p_results_hd TYPE ANY TABLE.

  PROTECTED SECTION.
    METHODS: add_obj_type IMPORTING objtype TYPE string.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_test_root IMPLEMENTATION.

  METHOD add_obj_type.
    RETURN.
  ENDMETHOD.

ENDCLASS.