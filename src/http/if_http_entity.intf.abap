INTERFACE if_http_entity PUBLIC.

  METHODS:
    set_cdata IMPORTING data TYPE string,
    set_data IMPORTING data TYPE xstring,
    get_header_field,
    get_cdata RETURNING VALUE(data) TYPE string,
    set_content_type.

ENDINTERFACE.