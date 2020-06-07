INTERFACE if_http_request PUBLIC.

  METHODS:
    get_method RETURNING VALUE(method) TYPE string,
    set_header_field,
    set_method,
    set_data,
    get_cdata,
    get_header_field,
    get_form_field,
    get_data,
    set_cdata,
    set_compression.

ENDINTERFACE.