INTERFACE if_ci_atc_check
  PUBLIC.
  TYPES:
    BEGIN OF ty_object,
      type TYPE c LENGTH 4,
      name TYPE c LENGTH 40,
    END OF ty_object.
  TYPES:
    BEGIN OF ty_position,
      line TYPE i,
      column TYPE int1,
    END OF ty_position.
  TYPES:
    BEGIN OF ty_location,
      object TYPE ty_object,
      position TYPE ty_position,
    END OF ty_location.
  TYPES ty_finding_code TYPE c LENGTH 10.
  TYPES:
    BEGIN OF ty_message_parameters,
      param_1 TYPE string,
      param_2 TYPE string,
      param_3 TYPE string,
      param_4 TYPE string,
    END OF ty_message_parameters.
  TYPES:
    BEGIN OF ENUM ty_finding_severity STRUCTURE finding_severities,
      error,
      warning,
      note,
    END OF ENUM ty_finding_severity STRUCTURE finding_severities.
  TYPES ty_checksum TYPE int4.
  TYPES ty_details TYPE REF TO cl_ci_atc_finding_details.
  TYPES:
    BEGIN OF ty_finding,
      code TYPE ty_finding_code,
      location TYPE ty_location,
      parameters TYPE ty_message_parameters,
      checksum TYPE ty_checksum,
      has_pseudo_comment TYPE abap_bool,
      details TYPE ty_details,
    END OF ty_finding.
  TYPES ty_findings TYPE SORTED TABLE OF ty_finding WITH NON-UNIQUE KEY code location.
  TYPES ty_data_provider TYPE REF TO cl_ci_atc_data_provider.

  METHODS run
    IMPORTING object TYPE ty_object
              data_provider TYPE ty_data_provider
    RETURNING VALUE(findings) TYPE ty_findings.
  METHODS get_meta_data
    RETURNING VALUE(meta_data) TYPE REF TO if_ci_atc_check_meta_data.
  METHODS set_attributes DEFAULT IGNORE
    IMPORTING attributes TYPE if_ci_atc_check_meta_data=>ty_attributes
    RAISING cx_ci_atc_check_invalid_attr.
  METHODS verify_prerequisites
    RETURNING VALUE(verification_findings) TYPE ty_findings.
  METHODS set_assistant_factory
    IMPORTING factory TYPE REF TO cl_ci_atc_assistant_factory.
ENDINTERFACE.
