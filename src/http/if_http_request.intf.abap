INTERFACE if_http_request PUBLIC.
  INTERFACES if_http_entity.

  CONSTANTS:
    co_protocol_version_1_1 TYPE string VALUE 'VER11',
    co_protocol_version_1_0 TYPE string VALUE 'VER10',
    co_request_method_get TYPE string VALUE 'GET',
    co_request_method_post TYPE string VALUE 'POST'.

  ALIASES get_serialized_message_length
    FOR if_http_entity~get_serialized_message_length.
  ALIASES to_xstring
    FOR if_http_entity~to_xstring.
  ALIASES set_content_type
    FOR if_http_entity~set_content_type.

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
    set_data
      IMPORTING data TYPE string
      RETURNING VALUE(val) TYPE string,
    get_cdata
      RETURNING VALUE(data) TYPE string,
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
    num_multiparts
      RETURNING VALUE(val) TYPE i,
    set_cdata
      IMPORTING data TYPE string,
    add_multipart
      IMPORTING suppress_content_length TYPE string OPTIONAL
      RETURNING VALUE(entity) TYPE REF TO if_http_entity,
    set_compression,
    set_authorization
      IMPORTING
        auth_type TYPE i OPTIONAL
        VALUE(username) TYPE string
        VALUE(password) TYPE string,
    get_multipart
      IMPORTING
        index TYPE i
      RETURNING
        VALUE(entity) TYPE REF TO if_http_entity,
    get_form_fields_cs
      IMPORTING
        formfield_encoding TYPE i OPTIONAL
        search_option TYPE i OPTIONAL
      CHANGING
        fields TYPE any,
    get_cookie_field
      IMPORTING
        cookie_name TYPE string
        field_name TYPE string
      RETURNING VALUE(val) TYPE string,
    get_form_data
      IMPORTING !name TYPE string
      CHANGING !data TYPE data.
ENDINTERFACE.
