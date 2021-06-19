CLASS /iwbep/cx_mgw_tech_exception DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cx_mgw_base_exception
  CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS:
      BEGIN OF method_not_implemented,
        msgid TYPE string VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE string VALUE '021',
        attr1 TYPE string VALUE 'METHOD',
        attr2 TYPE string VALUE '',
        attr3 TYPE string VALUE '',
        attr4 TYPE string VALUE '',
      END OF method_not_implemented.

ENDCLASS.

CLASS /iwbep/cx_mgw_tech_exception IMPLEMENTATION.

ENDCLASS.