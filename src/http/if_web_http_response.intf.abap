INTERFACE if_web_http_response PUBLIC.
  METHODS:
    set_text,
    set_status.

  METHODS get_status
    RETURNING
      VALUE(r_value) TYPE http_status
    RAISING
      cx_web_message_error.

  METHODS get_binary
    IMPORTING
      i_offset       TYPE i DEFAULT 0
      i_length       TYPE i DEFAULT -1
    RETURNING
      VALUE(r_value) TYPE xstring
    RAISING
      cx_web_message_error.

  METHODS get_text
    RETURNING
      VALUE(r_value) TYPE string
    RAISING
      cx_web_message_error.

  METHODS get_header_field
    IMPORTING
      i_name         TYPE string
    RETURNING
      VALUE(r_value) TYPE string
    RAISING
      cx_web_message_error.

  METHODS get_header_fields
    RETURNING
      VALUE(r_value) TYPE name_value_pairs
    RAISING
      cx_web_message_error.
ENDINTERFACE.