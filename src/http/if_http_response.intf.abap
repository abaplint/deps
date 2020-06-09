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
    get_data,
    get_cdata,
    set_compression,
    set_header_field
      IMPORTING
        name TYPE string
        value TYPE string,
    get_header_field
      IMPORTING name TYPE string,
    get_content_type,
    set_content_type
      IMPORTING type TYPE string,
    get_status
      EXPORTING
        code   TYPE i
        reason TYPE string.

ENDINTERFACE.