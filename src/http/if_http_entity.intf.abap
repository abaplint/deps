INTERFACE if_http_entity PUBLIC.

  METHODS:
    set_cdata IMPORTING data TYPE string,
    get_header_field,
    get_cdata,
    set_content_type.

ENDINTERFACE.