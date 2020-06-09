INTERFACE if_http_request PUBLIC.

  METHODS:
    get_method
      RETURNING
        VALUE(method) TYPE string,
    set_header_field
      IMPORTING
        name TYPE string
        value TYPE string,
    set_method
      IMPORTING
        method TYPE string,
    set_data
      IMPORTING data TYPE string
      RETURNING VALUE(val) TYPE string,
    get_cdata
      IMPORTING data TYPE string
      RETURNING VALUE(val) TYPE string,
    get_header_field
      IMPORTING name TYPE string
      RETURNING
        VALUE(value) TYPE string,
    get_form_field
      IMPORTING field TYPE string
      RETURNING VALUE(val) TYPE string,
    get_data,
    set_cdata
      IMPORTING data TYPE string,
    set_compression.

ENDINTERFACE.