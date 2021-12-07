INTERFACE if_ci_atc_finding_stack
  PUBLIC.

  TYPES:
    BEGIN OF ty_stack_statement,
      text TYPE string,
      statement TYPE if_ci_atc_source_code_provider=>ty_statement,
    END OF ty_stack_statement.
  TYPES ty_stack_statements TYPE STANDARD TABLE OF ty_stack_statement WITH EMPTY KEY.
  METHODS push_statement
    IMPORTING statement TYPE ty_stack_statement.
  METHODS pop_statement
    RETURNING VALUE(statement) TYPE ty_stack_statement.
  METHODS peek_statement
    RETURNING VALUE(statement) TYPE ty_stack_statement.
  METHODS peek_full_stack
    RETURNING VALUE(statements) TYPE ty_stack_statements.

ENDINTERFACE.
