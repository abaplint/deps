INTERFACE if_web_http_request PUBLIC.
  METHODS:
    get_header_field,
    get_method RETURNING VALUE(method) TYPE string,
    get_text RETURNING VALUE(text) TYPE string,
    get_form_field.
ENDINTERFACE.