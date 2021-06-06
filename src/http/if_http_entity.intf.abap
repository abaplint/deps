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
    set_compression,
    add_multipart,
    append_cdata IMPORTING data TYPE clike,
    get_form_field IMPORTING name TYPE string RETURNING VALUE(value) TYPE string,
    get_cdata RETURNING VALUE(data) TYPE string,
    get_content_type
      RETURNING VALUE(val) TYPE string,
    set_content_type,
    get_header_fields CHANGING fields TYPE any,
    get_cookies CHANGING cookies TYPE any.

ENDINTERFACE.