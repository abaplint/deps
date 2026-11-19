CLASS cl_abap_intfdescr DEFINITION PUBLIC FINAL CREATE PROTECTED
  INHERITING FROM cl_abap_objectdescr.

  PUBLIC SECTION.
    CONSTANTS intfkind_flatt TYPE abap_intfkind VALUE 'F'.
    CONSTANTS intfkind_nested TYPE abap_intfkind VALUE 'N'.

    DATA intf_kind TYPE abap_intfkind READ-ONLY.

    CLASS-METHODS load_class.

    METHODS is_instantiatable REDEFINITION.

ENDCLASS.

CLASS cl_abap_intfdescr IMPLEMENTATION.

  METHOD load_class.
    RETURN.
  ENDMETHOD.

  METHOD is_instantiatable.
    RETURN.
  ENDMETHOD.

ENDCLASS.
