CLASS cl_ci_atc_assistant_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    METHODS create_finding_details
      RETURNING VALUE(details) TYPE REF TO cl_ci_atc_finding_details.
    METHODS create_call_stack
      RETURNING VALUE(stack) TYPE REF TO if_ci_atc_finding_stack.
    METHODS create_quickfixes
      RETURNING VALUE(fixes) TYPE REF TO cl_ci_atc_quickfixes.
    METHODS create_quickfix_context
      IMPORTING descriptor TYPE cl_ci_atc_quickfix_context=>ty_context_descriptor
      RETURNING VALUE(context) TYPE REF TO cl_ci_atc_quickfix_context.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS cl_ci_atc_assistant_factory IMPLEMENTATION.

  METHOD create_finding_details.
    RETURN.
  ENDMETHOD.

  METHOD create_call_stack.
    RETURN.
  ENDMETHOD.

  METHOD create_quickfixes.
    RETURN.
  ENDMETHOD.

  METHOD create_quickfix_context.
    RETURN.
  ENDMETHOD.

ENDCLASS.
