INTERFACE if_ci_test PUBLIC.

  DATA has_documentation TYPE abap_bool.

  METHODS:
    query_attributes IMPORTING p_display TYPE abap_bool,
    navigate,
    display_documentation.

ENDINTERFACE.