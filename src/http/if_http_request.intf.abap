INTERFACE if_http_request PUBLIC.

  METHODS:
    get_method RETURNING VALUE(method) TYPE string,
    set_header_field,
    set_method,
    set_data,
    set_compression.

ENDINTERFACE.