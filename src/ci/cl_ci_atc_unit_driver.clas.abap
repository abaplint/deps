CLASS cl_ci_atc_unit_driver DEFINITION
  PUBLIC FOR TESTING
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_class_name TYPE c LENGTH 30.
    TYPES ty_method_name TYPE c LENGTH 61.
    TYPES:
      BEGIN OF ty_method_identifier,
        class TYPE ty_class_name,
        method TYPE ty_method_name,
      END OF ty_method_identifier.

    CLASS-METHODS create_asserter
      RETURNING VALUE(asserter) TYPE REF TO if_ci_atc_unit_asserter.
    CLASS-METHODS get_method_object
      IMPORTING method TYPE ty_method_identifier
      RETURNING VALUE(method_object) TYPE if_ci_atc_check=>ty_object.
  PRIVATE SECTION.
ENDCLASS.



CLASS cl_ci_atc_unit_driver IMPLEMENTATION.

  METHOD create_asserter.
    RETURN.
  ENDMETHOD.

  METHOD get_method_object.
    RETURN.
  ENDMETHOD.

ENDCLASS.
