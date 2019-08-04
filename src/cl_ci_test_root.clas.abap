CLASS cl_ci_test_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    DATA: category          TYPE string,
          description       TYPE string,
          object_type       TYPE string,
          object_name       TYPE string,
          version           TYPE string,
          position          TYPE string,
          has_documentation TYPE abap_bool,
          has_attributes    TYPE abap_bool,
          attributes_ok     TYPE abap_bool,
          myname            TYPE string.

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
      inform
        ABSTRACT.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_test_root IMPLEMENTATION.

ENDCLASS.
