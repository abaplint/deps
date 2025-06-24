INTERFACE if_http_request PUBLIC.
  INTERFACES if_http_entity.

  CONSTANTS:
    co_protocol_version_1_1 TYPE i VALUE 1001,
    co_protocol_version_1_0 TYPE i VALUE 1000,
    co_request_method_get TYPE string VALUE 'GET',
    co_request_method_post TYPE string VALUE 'POST'.

  ALIASES add_multipart FOR if_http_entity~add_multipart.
  ALIASES delete_cookie FOR if_http_entity~delete_cookie.
  ALIASES delete_cookie_secure FOR if_http_entity~delete_cookie_secure.
  ALIASES get_cdata FOR if_http_entity~get_cdata.
  ALIASES get_content_type FOR if_http_entity~get_content_type.
  ALIASES get_cookie_field FOR if_http_entity~get_cookie_field.
  ALIASES get_data FOR if_http_entity~get_data.
  ALIASES get_form_field FOR if_http_entity~get_form_field.
  ALIASES get_form_fields FOR if_http_entity~get_form_fields.
  ALIASES get_form_fields_cs FOR if_http_entity~get_form_fields_cs.
  ALIASES get_header_field FOR if_http_entity~get_header_field.
  ALIASES get_header_fields FOR if_http_entity~get_header_fields.
  ALIASES get_multipart FOR if_http_entity~get_multipart.
  ALIASES get_serialized_message_length FOR if_http_entity~get_serialized_message_length.
  ALIASES num_multiparts FOR if_http_entity~num_multiparts.
  ALIASES set_cdata FOR if_http_entity~set_cdata.
  ALIASES set_compression FOR if_http_entity~set_compression.
  ALIASES set_content_type FOR if_http_entity~set_content_type.
  ALIASES set_data FOR if_http_entity~set_data.
  ALIASES set_form_field FOR if_http_entity~set_form_field.
  ALIASES set_form_fields FOR if_http_entity~set_form_fields.
  ALIASES set_header_field FOR if_http_entity~set_header_field.
  ALIASES set_header_fields FOR if_http_entity~set_header_fields.
  ALIASES to_xstring FOR if_http_entity~to_xstring.
  ALIASES get_cookies FOR if_http_entity~get_cookies.
  ALIASES get_last_error FOR if_http_entity~get_last_error.
  ALIASES set_cookie FOR if_http_entity~set_cookie.

  METHODS:
    set_version
      IMPORTING
        version TYPE i DEFAULT 1000,
    get_method
      RETURNING
        VALUE(method) TYPE string,
    set_method
      IMPORTING
        method TYPE string,
    set_authorization
      IMPORTING
        auth_type TYPE i OPTIONAL
        username  TYPE string
        password  TYPE string,
    get_form_data
      IMPORTING
        name TYPE string
      CHANGING
        data TYPE data.

  METHODS copy
    RETURNING
      VALUE(request) TYPE REF TO if_http_request.

  METHODS get_authorization
    EXPORTING
      auth_type TYPE i
      username  TYPE string
      password  TYPE string.

  METHODS get_raw_message
    RETURNING
      VALUE(data) TYPE xstring.

  METHODS get_uri_parameter
    IMPORTING
      name         TYPE string
    RETURNING
      VALUE(value) TYPE string.

  METHODS get_user_agent
    EXPORTING
      user_agent_type    TYPE i
      user_agent_version TYPE i.
ENDINTERFACE.
