INTERFACE if_http_response PUBLIC.
  INTERFACES if_http_entity.

  TYPES: ty_fields TYPE STANDARD TABLE OF string WITH DEFAULT KEY.

  ALIASES get_serialized_message_length
    FOR if_http_entity~get_serialized_message_length.
  ALIASES to_xstring
    FOR if_http_entity~to_xstring.
  ALIASES set_content_type
    FOR if_http_entity~set_content_type.

  METHODS:
    get_header_fields
      CHANGING
        fields TYPE ty_fields,
    set_status
      IMPORTING
        code   TYPE i
        reason TYPE string,
    set_cdata
      IMPORTING data TYPE string,
    set_data
      IMPORTING data TYPE string,
    redirect
      IMPORTING
        url TYPE string
        permanently TYPE i OPTIONAL
        protocol_dependent TYPE i OPTIONAL,
    get_data
      RETURNING VALUE(val) TYPE xstring,
    get_cdata
      RETURNING VALUE(val) TYPE string,
    set_cookie
      IMPORTING
        name TYPE string
        value TYPE string
        path TYPE string OPTIONAL
        domain TYPE string OPTIONAL
        expires TYPE string OPTIONAL
        secure TYPE i OPTIONAL,
    set_compression,
    set_header_field
      IMPORTING
        name TYPE string
        value TYPE string,
    get_header_field
      IMPORTING name TYPE string
      RETURNING VALUE(val) TYPE string,
    get_content_type
      RETURNING VALUE(val) TYPE string,
    get_raw_message
      RETURNING VALUE(val) TYPE xstring,
    get_multipart
      IMPORTING index TYPE string
      RETURNING VALUE(entity) TYPE REF TO if_http_entity,
    num_multiparts
      RETURNING VALUE(num) TYPE string,
    delete_header_field
      IMPORTING
        name TYPE string,
    delete_cookie_at_client
      IMPORTING
        name TYPE string
        path TYPE string OPTIONAL
        domain TYPE string OPTIONAL,
    get_status
      EXPORTING
        code   TYPE i
        reason TYPE string.

ENDINTERFACE.
