INTERFACE if_web_http_response PUBLIC.
  METHODS:
    set_text,
    set_status.

  METHODS get_status
    RETURNING
      VALUE(r_value) TYPE http_status
    RAISING
      cx_web_message_error.
ENDINTERFACE.