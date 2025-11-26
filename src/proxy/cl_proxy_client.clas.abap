CLASS cl_proxy_client DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_proxy_client.

    METHODS constructor
      IMPORTING
        intf_name         TYPE clike OPTIONAL
        class_name        TYPE clike OPTIONAL
        logical_port_name TYPE clike OPTIONAL
      RAISING
        cx_ai_system_fault.
ENDCLASS.

CLASS cl_proxy_client IMPLEMENTATION.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD if_proxy_client~execute.
    RETURN.
  ENDMETHOD.

ENDCLASS.