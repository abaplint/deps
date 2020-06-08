INTERFACE if_http_client PUBLIC.
  DATA:
    request TYPE REF TO if_http_request,
    response TYPE REF TO if_http_response.
  METHODS:
    send,
    authenticate,
    close,
    get_last_error
      EXPORTING
        code    TYPE i
        message TYPE string,
    send_sap_logon_ticket,
    receive.
ENDINTERFACE.