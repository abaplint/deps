CLASS cl_ci_test_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    INTERFACES if_ci_test.

    TYPES: BEGIN OF ty_message,
             test     TYPE string,
             code     TYPE string,
             kind     TYPE string,
             text     TYPE string,
             pcom     TYPE string,
             pcom_alt TYPE string,
          END OF ty_message.

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
          scimessages       TYPE STANDARD TABLE OF ty_message WITH DEFAULT KEY,
          no_aunit          TYPE string.

    DATA typelist TYPE scit_objt READ-ONLY.

    CONSTANTS:
      c_pc_exceptn_posibl TYPE c LENGTH 1 VALUE '?',
      c_pc_exceptn_exists TYPE c LENGTH 1 VALUE '?',
      c_exceptn_by_table_entry TYPE c LENGTH 1 VALUE '?',
      c_exceptn_imposibl TYPE c LENGTH 1 VALUE '?'.

    CONSTANTS:
      c_type_include TYPE c LENGTH 4 VALUE '????',
      c_type_program TYPE c LENGTH 4 VALUE '????'.

    CONSTANTS:
      c_note    TYPE c LENGTH 1 VALUE '?',
      c_warning TYPE c LENGTH 1 VALUE '?',
      c_error   TYPE c LENGTH 1 VALUE '?'.

    CONSTANTS c_false TYPE c LENGTH 1 VALUE ' '.

    DATA name TYPE string.

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
      run_end
        ABSTRACT.

    METHODS
      run_begin
        ABSTRACT.

    METHODS
      get_result_node
        ABSTRACT
        IMPORTING
          p_kind          TYPE c
        RETURNING
          VALUE(p_result) TYPE REF TO cl_ci_result_root.

    EVENTS message EXPORTING
      VALUE(p_sub_obj_type) TYPE string
      VALUE(p_sub_obj_name) TYPE string
      VALUE(p_position) TYPE string
      VALUE(p_line) TYPE i
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
      VALUE(p_detail) TYPE xstring OPTIONAL
      VALUE(p_checksum_1) TYPE i OPTIONAL
      VALUE(p_inclspec) TYPE string.

    METHODS
      inform
        ABSTRACT
        IMPORTING
          p_test         TYPE string
          p_code         TYPE string
          p_sub_obj_type TYPE clike OPTIONAL
          p_sub_obj_name TYPE string OPTIONAL
          p_position     TYPE string OPTIONAL
          p_line         TYPE i OPTIONAL
          p_column       TYPE string OPTIONAL
          p_errcnt       TYPE string OPTIONAL
          p_kind         TYPE clike OPTIONAL
          p_suppress     TYPE string OPTIONAL
          p_param_1      TYPE string OPTIONAL
          p_param_2      TYPE string OPTIONAL
          p_param_3      TYPE string OPTIONAL
          p_param_4      TYPE string OPTIONAL
          p_inclspec     TYPE string OPTIONAL
          p_detail       TYPE xstring OPTIONAL
          p_checksum_1   TYPE i OPTIONAL
          p_comments     TYPE string OPTIONAL.
* todo, some of the above is from version something?

    TYPES: BEGIN OF ty_results,
             test     TYPE string,
             sobjtype TYPE string,
             code     TYPE string,
           END OF ty_results.

    TYPES ty_results_tt TYPE STANDARD TABLE OF ty_results WITH DEFAULT KEY.

    METHODS clear.

    METHODS
      consolidate_for_display
        ABSTRACT
        IMPORTING
          p_sort_by_user    TYPE string
          p_sort_by_package TYPE string
          p_sort_by_object  TYPE string
        CHANGING
          p_results         TYPE ty_results_tt
          p_results_hd      TYPE ANY TABLE.

  PROTECTED SECTION.
    METHODS: add_obj_type IMPORTING objtype TYPE string.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_test_root IMPLEMENTATION.

  METHOD add_obj_type.
    RETURN.
  ENDMETHOD.

  METHOD clear.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_test~query_attributes.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_test~navigate.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_test~display_documentation.
    RETURN.
  ENDMETHOD.

ENDCLASS.
