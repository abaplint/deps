INTERFACE i_oi_error PUBLIC.

  METHODS flush_error.
  METHODS raise_message
    IMPORTING
      type TYPE c.
  METHODS get_message
    EXPORTING
      message_id     TYPE sy-msgid
      message_number TYPE sy-msgno
      param1         TYPE sy-msgv1
      param2         TYPE sy-msgv2
      param3         TYPE sy-msgv3
      param4         TYPE sy-msgv4.

  DATA:
    error_code TYPE string,
    is_flushed TYPE c LENGTH 1,
    has_failed TYPE c LENGTH 1,
    has_succeeded TYPE c LENGTH 1.

ENDINTERFACE.