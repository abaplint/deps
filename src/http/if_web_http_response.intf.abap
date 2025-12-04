INTERFACE if_web_http_response PUBLIC.

  METHODS delete_header_field
    IMPORTING
      i_name  TYPE string.

  METHODS delete_cookie_at_client
    IMPORTING
      name   TYPE string
      path   TYPE string OPTIONAL
      domain TYPE string OPTIONAL.

  METHODS set_binary
    IMPORTING
      i_data TYPE xstring.

  METHODS set_cookie
    IMPORTING
      i_name    TYPE string
      i_value   TYPE string
      i_path    TYPE string OPTIONAL
      i_domain  TYPE string OPTIONAL
      i_expires TYPE string OPTIONAL
      i_secure  TYPE i      OPTIONAL
    RAISING
      cx_web_message_error.

  METHODS set_compression
    IMPORTING
      disable_extended_checks TYPE c OPTIONAL
      options                 TYPE i DEFAULT 2.

  METHODS set_header_fields
    IMPORTING
      i_fields TYPE name_value_pairs
    RAISING
      cx_web_message_error.

  METHODS set_header_field
    IMPORTING
      i_name  TYPE string
      i_value TYPE string.

  METHODS set_status
    IMPORTING
      i_code   TYPE any
      i_reason TYPE any OPTIONAL.

  METHODS set_text
    IMPORTING
      i_text TYPE string.

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
