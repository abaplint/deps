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
    append_field_url
      IMPORTING
        name TYPE string
        value TYPE string
      CHANGING
        url TYPE string,
    authenticate
      IMPORTING
        proxy_authentication TYPE abap_bool OPTIONAL
        username TYPE string
        password TYPE string,
    close,
    refresh_request,
    refresh_response,
    get_last_error
      EXPORTING
        code    TYPE i
        message TYPE string,
    send_sap_logon_ticket,
    receive,
    create_rel_url
      IMPORTING path TYPE string
      RETURNING VALUE(url) TYPE string.
ENDINTERFACE.
