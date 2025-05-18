CLASS cl_ci_category_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    INTERFACES if_ci_test.

    DATA: category          TYPE string,
          description       TYPE string,
          position          TYPE string,
          myname            TYPE string.

  ALIASES has_documentation FOR if_ci_test~has_documentation.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_category_root IMPLEMENTATION.

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
