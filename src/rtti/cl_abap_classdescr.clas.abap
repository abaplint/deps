CLASS cl_abap_classdescr DEFINITION PUBLIC FINAL CREATE PROTECTED
  INHERITING FROM cl_abap_objectdescr.

  PUBLIC SECTION.
    CONSTANTS classkind_common TYPE abap_classkind VALUE 'C'.
    CONSTANTS classkind_final TYPE abap_classkind VALUE 'F'.
    CONSTANTS classkind_abstract TYPE abap_classkind VALUE 'A'.

    DATA class_kind TYPE abap_classkind READ-ONLY.
    DATA create_visibility TYPE abap_visibility READ-ONLY.

    CLASS-METHODS load_class.

    METHODS get_super_class_type
      RETURNING
        VALUE(p_descr_ref) TYPE REF TO cl_abap_classdescr
      EXCEPTIONS
        super_class_not_found.

    METHODS get_friend_types
      RETURNING
        VALUE(p_friends_tab) TYPE abap_frndtypes_tab.

    CLASS-METHODS get_class_name
      IMPORTING
        p_object      TYPE REF TO object
      RETURNING
        VALUE(p_name) TYPE abap_abstypename.

    METHODS is_shared_memory_enabled
      RETURNING
        VALUE(p_is_shared_memory_enabled) TYPE abap_bool.

    METHODS is_instantiatable REDEFINITION.

ENDCLASS.

CLASS cl_abap_classdescr IMPLEMENTATION.

  METHOD load_class.
    RETURN.
  ENDMETHOD.

  METHOD get_super_class_type.
    RETURN.
  ENDMETHOD.

  METHOD get_friend_types.
    RETURN.
  ENDMETHOD.

  METHOD get_class_name.
    RETURN.
  ENDMETHOD.

  METHOD is_shared_memory_enabled.
    RETURN.
  ENDMETHOD.

  METHOD is_instantiatable.
    RETURN.
  ENDMETHOD.

ENDCLASS.
