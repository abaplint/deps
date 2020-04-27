INTERFACE if_http_request PUBLIC.

  METHODS:
    get_method RETURNING VALUE(method) TYPE string,
    set_compression.

ENDINTERFACE.