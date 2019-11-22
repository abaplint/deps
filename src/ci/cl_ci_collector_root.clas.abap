CLASS cl_ci_collector_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    INTERFACES: if_ci_collector.
    DATA: myname         TYPE string,
          version        TYPE string,
          position       TYPE string,
          has_attributes TYPE abap_bool,
          attributes_ok  TYPE abap_bool,
          group          TYPE string,
          description    TYPE string.
    CONSTANTS: c_general TYPE string VALUE '?'.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_collector_root IMPLEMENTATION.

  METHOD if_ci_collector~put_attributes.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_collector~get_attributes.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_collector~collect.
    RETURN.
  ENDMETHOD.

  METHOD if_ci_collector~query_attributes.
    RETURN.
  ENDMETHOD.

ENDCLASS.
