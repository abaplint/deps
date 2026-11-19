CLASS cl_abap_tabledescr DEFINITION PUBLIC FINAL CREATE PROTECTED
  INHERITING FROM cl_abap_complexdescr.

  PUBLIC SECTION.
    CONSTANTS tablekind_any TYPE abap_tablekind VALUE 'A'.
    CONSTANTS tablekind_std TYPE abap_tablekind VALUE 'S'.
    CONSTANTS tablekind_index TYPE abap_tablekind VALUE 'I'.
    CONSTANTS tablekind_hashed TYPE abap_tablekind VALUE 'H'.
    CONSTANTS tablekind_sorted TYPE abap_tablekind VALUE 'O'.
    CONSTANTS keydefkind_default TYPE abap_keydefkind VALUE 'D'.
    CONSTANTS keydefkind_tableline TYPE abap_keydefkind VALUE 'L'.
    CONSTANTS keydefkind_user TYPE abap_keydefkind VALUE 'U'.
    CONSTANTS keydefkind_empty TYPE abap_keydefkind VALUE 'E'.
    CONSTANTS further_scnd_keys_not_spec TYPE i VALUE 26453701.
    CONSTANTS further_scnd_keys_yes TYPE i VALUE 26453702.
    CONSTANTS further_scnd_keys_no TYPE i VALUE 26453703.

    DATA key TYPE abap_keydescr_tab READ-ONLY.
    DATA initial_size TYPE i READ-ONLY.
    DATA key_defkind TYPE abap_keydefkind READ-ONLY.
    DATA has_unique_key TYPE abap_bool READ-ONLY.
    DATA table_kind TYPE abap_tablekind READ-ONLY.

    CLASS-METHODS load_class.

    METHODS get_table_line_type
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_datadescr.

    CLASS-METHODS get
      IMPORTING
        p_line_type     TYPE REF TO cl_abap_datadescr
        p_table_kind    TYPE abap_tablekind DEFAULT tablekind_std
        p_unique        TYPE abap_bool DEFAULT abap_false
        p_key           TYPE abap_keydescr_tab OPTIONAL
        p_key_kind      TYPE abap_keydefkind DEFAULT keydefkind_default
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
        cx_sy_table_creation.

    CLASS-METHODS create
      IMPORTING
        p_line_type     TYPE REF TO cl_abap_datadescr
        p_table_kind    TYPE abap_tablekind DEFAULT tablekind_std
        p_unique        TYPE abap_bool DEFAULT abap_false
        p_key           TYPE abap_keydescr_tab OPTIONAL
        p_key_kind      TYPE abap_keydefkind DEFAULT keydefkind_default
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
        cx_sy_table_creation.

    METHODS get_keys
      RETURNING
        VALUE(p_keys) TYPE abap_table_keydescr_tab.

    METHODS get_key_aliases
      RETURNING
        VALUE(p_key_aliases) TYPE abap_key_alias_map.

    CLASS-METHODS get_with_keys
      IMPORTING
        p_line_type     TYPE REF TO cl_abap_datadescr
        p_keys          TYPE abap_table_keydescr_tab
        p_key_aliases   TYPE abap_key_alias_map OPTIONAL
        p_initial_size  TYPE i DEFAULT 0
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
        cx_sy_table_creation.

    CLASS-METHODS create_with_keys
      IMPORTING
        p_line_type     TYPE REF TO cl_abap_datadescr
        p_keys          TYPE abap_table_keydescr_tab
        p_initial_size  TYPE i DEFAULT 0
      RETURNING
        VALUE(p_result) TYPE REF TO cl_abap_tabledescr
      RAISING
        cx_sy_table_creation.

ENDCLASS.

CLASS cl_abap_tabledescr IMPLEMENTATION.

  METHOD load_class.
    RETURN.
  ENDMETHOD.

  METHOD get_table_line_type.
    RETURN.
  ENDMETHOD.

  METHOD get.
    RETURN.
  ENDMETHOD.

  METHOD create.
    RETURN.
  ENDMETHOD.

  METHOD get_keys.
    RETURN.
  ENDMETHOD.

  METHOD get_key_aliases.
    RETURN.
  ENDMETHOD.

  METHOD get_with_keys.
    RETURN.
  ENDMETHOD.

  METHOD create_with_keys.
    RETURN.
  ENDMETHOD.

ENDCLASS.
