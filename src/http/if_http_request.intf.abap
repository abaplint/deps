INTERFACE if_http_request PUBLIC.
  CONSTANTS:
    co_protocol_version_1_1 TYPE string VALUE 'VER11',
    co_request_method_get TYPE string VALUE 'GET',
    co_request_method_post TYPE string VALUE 'POST'.

  METHODS:
    get_content_type
      RETURNING VALUE(type) TYPE string,
    set_version
      IMPORTING
        version TYPE string,
    set_form_field
      IMPORTING
        name TYPE string
        value TYPE string,
    get_method
      RETURNING
        VALUE(method) TYPE string,
    set_header_field
      IMPORTING
        name TYPE string
        value TYPE string,
    get_form_fields
      CHANGING
        fields TYPE string,
    set_header_fields
      IMPORTING
        fields TYPE string,
    set_method
      IMPORTING
        meth TYPE string,
    set_form_fields
      IMPORTING
        fields TYPE string,
    set_content_type
      IMPORTING
        typ TYPE string,
    set_data
      IMPORTING data TYPE string
      RETURNING VALUE(val) TYPE string,
    get_cdata
      IMPORTING data TYPE string
      RETURNING VALUE(val) TYPE string,
    get_header_fields
      CHANGING
        fields TYPE string,
    get_header_field
      IMPORTING name TYPE string
      RETURNING
        VALUE(value) TYPE string,
    get_form_field
      IMPORTING name TYPE string
      RETURNING VALUE(value) TYPE string,
    get_data
      RETURNING VALUE(val) TYPE string,
    set_cdata
      IMPORTING data TYPE string,
    get_multipart
      IMPORTING index TYPE string
      RETURNING VALUE(entity) TYPE REF TO if_http_entity,
    num_multiparts
      RETURNING VALUE(num) TYPE string,
    add_multipart
      IMPORTING suppress_content_length TYPE string
      RETURNING VALUE(entity) TYPE REF TO if_http_entity,
    set_compression.

ENDINTERFACE.
