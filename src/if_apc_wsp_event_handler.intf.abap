INTERFACE if_apc_wsp_event_handler PUBLIC.

  METHODS:
    on_open,
    on_message IMPORTING i_message TYPE string,
    on_close,
    on_error.

ENDINTERFACE.