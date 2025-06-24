INTERFACE if_ci_atc_check PUBLIC.
  TYPES ty_finding_code TYPE string.
  TYPES ty_findings TYPE string.
  TYPES ty_object TYPE string.

  METHODS get_meta_data
    RETURNING VALUE(meta_data) TYPE REF TO if_ci_atc_check_meta_data.

  METHODS run
    IMPORTING
      object          TYPE any
      data_provider   TYPE REF TO any
    RETURNING
      VALUE(findings) TYPE string.

  METHODS set_assistant_factory.

  METHODS verify_prerequisites.
ENDINTERFACE.