INTERFACE if_http_extension PUBLIC.

  DATA flow_rc TYPE i.
  CONSTANTS co_flow_ok TYPE i VALUE 0.

  METHODS handle_request IMPORTING server TYPE REF TO if_http_server.

ENDINTERFACE.