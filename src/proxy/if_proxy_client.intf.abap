INTERFACE if_proxy_client PUBLIC.

  METHODS execute
    IMPORTING
      method_name  TYPE clike
      use_xml      TYPE clike OPTIONAL
    CHANGING
      parmbind_tab TYPE abap_parmbind_tab
    RAISING
      cx_ai_system_fault
      cx_ai_application_fault.

ENDINTERFACE.