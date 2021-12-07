CLASS cl_ci_atc_quickfix_context DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_interval,
        from TYPE i,
        to TYPE i,
      END OF ty_interval.
    TYPES:
      BEGIN OF ty_context_descriptor,
        procedure_id TYPE if_ci_atc_source_code_provider=>ty_procedure_id,
        statements TYPE ty_interval,
        tokens TYPE ty_interval,
      END OF ty_context_descriptor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS cl_ci_atc_quickfix_context IMPLEMENTATION.

ENDCLASS.
