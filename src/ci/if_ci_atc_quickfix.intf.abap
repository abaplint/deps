INTERFACE if_ci_atc_quickfix
  PUBLIC.

  TYPES ty_code TYPE STANDARD TABLE OF string WITH EMPTY KEY.

  METHODS insert_before
    IMPORTING context TYPE REF TO cl_ci_atc_quickfix_context
              code TYPE ty_code
    RETURNING VALUE(self) TYPE REF TO if_ci_atc_quickfix.
  METHODS insert_after
    IMPORTING context TYPE REF TO cl_ci_atc_quickfix_context
              code TYPE ty_code
    RETURNING VALUE(self) TYPE REF TO if_ci_atc_quickfix.
  METHODS replace
    IMPORTING context TYPE REF TO cl_ci_atc_quickfix_context
              code TYPE ty_code
    RETURNING VALUE(self) TYPE REF TO if_ci_atc_quickfix.

ENDINTERFACE.
