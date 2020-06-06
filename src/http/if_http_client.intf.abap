INTERFACE if_http_client PUBLIC.
  METHODS:
    send,
    authenticate,
    close,
    get_last_error,
    send_sap_logon_ticket,
    receive.
ENDINTERFACE.