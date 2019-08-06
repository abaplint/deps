CLASS cl_ci_collector_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
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

ENDCLASS.
