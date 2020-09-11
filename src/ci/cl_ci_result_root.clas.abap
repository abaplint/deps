CLASS cl_ci_result_root DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    DATA: BEGIN OF result,
            code TYPE string,
          END OF result.

    METHODS set_info ABSTRACT
      IMPORTING p_info TYPE string
      RETURNING VALUE(p_result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_ci_result_root IMPLEMENTATION.

ENDCLASS.