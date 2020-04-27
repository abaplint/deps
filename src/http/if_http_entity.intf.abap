INTERFACE if_http_entity PUBLIC.

  METHODS:
    set_cdata IMPORTING data TYPE string,
    get_header_field,
    get_cdata RETURNING VALUE(data) TYPE string,
    set_content_type.

ENDINTERFACE.