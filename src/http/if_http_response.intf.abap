INTERFACE if_http_response PUBLIC.

  METHODS:
    set_status
      IMPORTING
        code   TYPE i
        reason TYPE string,
    set_cdata
      IMPORTING data TYPE string,
    set_data
      IMPORTING data TYPE string,
    get_data
    RETURNING VALUE(val) TYPE string,
    get_cdata
      RETURNING VALUE(val) TYPE string,
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
    get_status
      EXPORTING
        code   TYPE i
        reason TYPE string.

ENDINTERFACE.