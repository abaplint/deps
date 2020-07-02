INTERFACE if_http_client PUBLIC.
  CONSTANTS:
    co_enabled TYPE i VALUE 1,
    co_disabled TYPE i VALUE 0.
  DATA:
    propertytype_logon_popup TYPE i,
    propertytype_accept_cookie TYPE i,
    request TYPE REF TO if_http_request,
    response TYPE REF TO if_http_response.
  METHODS:
    send
      IMPORTING
        timeout TYPE i OPTIONAL,
    authenticate
      IMPORTING
        proxy_authentication TYPE abap_bool
        username TYPE string
        password TYPE string,
    close,
    get_last_error
      EXPORTING
        code    TYPE i
        message TYPE string,
    send_sap_logon_ticket,
    receive.
ENDINTERFACE.