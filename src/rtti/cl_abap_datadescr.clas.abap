CLASS cl_abap_datadescr DEFINITION PUBLIC ABSTRACT CREATE PUBLIC
  INHERITING FROM cl_abap_typedescr.

  PUBLIC SECTION.
    CLASS-METHODS is_read_only
      IMPORTING
        p_data        TYPE REF TO data
      RETURNING
        VALUE(p_flag) TYPE abap_bool.

    METHODS applies_to_data
      IMPORTING
        p_data        TYPE data
      RETURNING
        VALUE(p_flag) TYPE abap_bool.

    METHODS applies_to_data_ref
      IMPORTING
        p_data        TYPE REF TO data
      RETURNING
        VALUE(p_flag) TYPE abap_bool.

    CLASS-METHODS get_data_type_kind
      IMPORTING
        p_data             TYPE data
      RETURNING
        VALUE(p_type_kind) TYPE abap_typekind.

    METHODS is_instantiatable REDEFINITION.

ENDCLASS.

CLASS cl_abap_datadescr IMPLEMENTATION.

  METHOD is_read_only.
    RETURN.
  ENDMETHOD.

  METHOD applies_to_data.
    RETURN.
  ENDMETHOD.

  METHOD applies_to_data_ref.
    RETURN.
  ENDMETHOD.

  METHOD get_data_type_kind.
    RETURN.
  ENDMETHOD.

  METHOD is_instantiatable.
    RETURN.
  ENDMETHOD.

ENDCLASS.
