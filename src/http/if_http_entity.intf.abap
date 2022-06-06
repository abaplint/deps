INTERFACE if_http_entity PUBLIC.

  CONSTANTS co_request_method_get TYPE string VALUE 'GET'.
  CONSTANTS co_request_method_post TYPE string VALUE 'POST'.

  METHODS:
    set_cdata IMPORTING data TYPE string,
    set_data IMPORTING data TYPE xstring,
    get_header_field
      IMPORTING name TYPE string
      RETURNING VALUE(value) TYPE string,
    set_header_field
      IMPORTING
        name  TYPE string
        value TYPE string,
    get_form_fields
      CHANGING
        fields TYPE string,
    set_compression,
    add_multipart,
    append_cdata IMPORTING data TYPE clike,
    get_form_field IMPORTING name TYPE string RETURNING VALUE(value) TYPE string,
    get_cdata RETURNING VALUE(data) TYPE string,
    get_content_type
      RETURNING VALUE(val) TYPE string,
    get_serialized_message_length
      EXPORTING
        VALUE(body_length) TYPE i
        VALUE(header_length) TYPE i,
    set_content_type
      IMPORTING
        content_type TYPE string,
    get_data
      RETURNING
        VALUE(data) TYPE xstring,
    get_header_fields CHANGING fields TYPE any,
    to_xstring
      RETURNING
        VALUE(data) TYPE xstring,
    get_cookies CHANGING cookies TYPE any.

ENDINTERFACE.
