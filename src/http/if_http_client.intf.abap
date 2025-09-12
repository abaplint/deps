INTERFACE if_http_client PUBLIC.
  CONSTANTS:
    co_enabled TYPE i VALUE 1,
    co_disabled TYPE i VALUE 0.

  CONSTANTS co_timeout_default TYPE i VALUE 60.

  DATA:
    propertytype_logon_popup TYPE i,
    propertytype_send_sap_passport TYPE i,
    propertytype_accept_cookie TYPE i,
    request TYPE REF TO if_http_request,
    response TYPE REF TO if_http_response.

  CLASS-METHODS:
    escape_html
      IMPORTING
        unescaped      TYPE string
      RETURNING
        VALUE(escaped) TYPE string,
    escape_url
      IMPORTING
        unescaped      TYPE string
      RETURNING
        VALUE(escaped) TYPE string,
    unescape_url
      IMPORTING
        escaped          TYPE string
      RETURNING
        VALUE(unescaped) TYPE string,
    listen
      RETURNING
        VALUE(client) TYPE REF TO if_http_client
      EXCEPTIONS
        http_communication_failure
        http_no_open_connection.

  METHODS:
    send
      IMPORTING
        timeout TYPE i OPTIONAL,
    append_field_url
      IMPORTING
        name  TYPE string
        value TYPE string
      CHANGING
        url   TYPE string,
    authenticate
      IMPORTING
        proxy_authentication TYPE abap_bool OPTIONAL
        username             TYPE string
        password             TYPE string,
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
      IMPORTING path       TYPE string
      RETURNING VALUE(url) TYPE string,
    create_abs_url
      IMPORTING
        protocol    TYPE string DEFAULT ''
        host        TYPE string DEFAULT ''
        port        TYPE string DEFAULT ''
        path        TYPE string DEFAULT ''
        querystring TYPE string DEFAULT ''
        stateful    TYPE i DEFAULT -1
      RETURNING
        VALUE(url)  TYPE string,
    refresh_cookie
      EXCEPTIONS
        http_action_failed
        http_processing_failed,
    send_sap_assertion_ticket
      IMPORTING
        client    TYPE symandt
        system_id TYPE sysysid
      EXCEPTIONS
        argument_not_found,
    set_compression
      IMPORTING
        options TYPE i DEFAULT 2
      EXCEPTIONS
        compression_not_possible.

ENDINTERFACE.
