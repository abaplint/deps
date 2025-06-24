INTERFACE if_web_http_request PUBLIC.
  METHODS get_header_field
    IMPORTING
      i_name         TYPE string
    RETURNING
      VALUE(r_value) TYPE string
    RAISING
      cx_web_message_error.

  METHODS get_method RETURNING VALUE(method) TYPE string.
  METHODS get_form_field.

  METHODS set_binary
    IMPORTING
      i_data         TYPE xstring
      i_offset       TYPE i DEFAULT 0
      i_length       TYPE i DEFAULT -1
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_request
    RAISING
      cx_web_message_error.

  METHODS get_header_fields
    RETURNING
      VALUE(r_value) TYPE name_value_pairs
    RAISING
      cx_web_message_error.

  METHODS set_uri_path
    IMPORTING
      i_uri_path     TYPE string
      multivalue     TYPE i DEFAULT 0
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_request
    RAISING
      cx_web_message_error.

  METHODS set_text
    IMPORTING
      i_text         TYPE string
      i_offset       TYPE i DEFAULT 0
      i_length       TYPE i DEFAULT -1
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_request
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

  METHODS set_header_fields
    IMPORTING
      i_fields       TYPE name_value_pairs
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_request
    RAISING
      cx_web_message_error.

  METHODS set_header_field
    IMPORTING
      i_name         TYPE string
      i_value        TYPE string
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_request
    RAISING
      cx_web_message_error.

  METHODS get_text
    RETURNING
      VALUE(r_value) TYPE string
    RAISING
      cx_web_message_error.
ENDINTERFACE.
