INTERFACE if_http_response PUBLIC.
  INTERFACES if_http_entity.

  TYPES: ty_fields TYPE STANDARD TABLE OF string WITH DEFAULT KEY.

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
    set_content_type
      IMPORTING type TYPE string,
    get_raw_message
      RETURNING VALUE(val) TYPE xstring,
    get_multipart
      IMPORTING index TYPE string
      RETURNING VALUE(entity) TYPE REF TO if_http_entity,
    num_multiparts
      RETURNING VALUE(num) TYPE string,
    get_status
      EXPORTING
        code   TYPE i
        reason TYPE string.

ENDINTERFACE.