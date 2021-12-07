INTERFACE if_ci_atc_unit_asserter
  PUBLIC.

  TYPES ty_code TYPE STANDARD TABLE OF string WITH EMPTY KEY.
  TYPES:
    BEGIN OF ty_asserter_config,
      quickfixes TYPE abap_bool,
    END OF ty_asserter_config.
  TYPES:
    BEGIN OF ty_expected_quickfix,
      quickfix_code TYPE cl_ci_atc_quickfixes=>ty_quickfix_code,
      location TYPE if_ci_atc_check=>ty_location,
      code TYPE ty_code,
    END OF ty_expected_quickfix.
  TYPES ty_expected_quickfixes TYPE STANDARD TABLE OF ty_expected_quickfix WITH EMPTY KEY.
  TYPES:
    BEGIN OF ty_expected_finding,
      code TYPE if_ci_atc_check=>ty_finding_code,
      location TYPE if_ci_atc_check=>ty_location,
      parameters TYPE if_ci_atc_check=>ty_message_parameters,
      quickfixes TYPE ty_expected_quickfixes,
    END OF ty_expected_finding.
  TYPES ty_expected_findings TYPE STANDARD TABLE OF ty_expected_finding WITH EMPTY KEY.


  METHODS check_and_assert
    IMPORTING
      check TYPE REF TO if_ci_atc_check
      object type if_ci_atc_check=>ty_object
      expected_findings TYPE ty_expected_findings
      asserter_config TYPE ty_asserter_config
    RAISING
      cx_static_check.

ENDINTERFACE.
