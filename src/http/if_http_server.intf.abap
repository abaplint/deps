INTERFACE if_http_server PUBLIC.

  DATA response TYPE REF TO if_http_response.
  DATA request TYPE REF TO if_http_request.

  CONSTANTS co_disabled TYPE i VALUE 0.
  CONSTANTS co_enabled TYPE i VALUE 1.

  CLASS-DATA session_id TYPE string READ-ONLY.
  CLASS-DATA authentication_method TYPE i READ-ONLY.
  CONSTANTS authmethod_service TYPE i VALUE 4.


  CLASS-METHODS append_field_url
    IMPORTING
      name  TYPE string
      value TYPE string
    CHANGING
      url   TYPE string.
  CLASS-METHODS decode_base64
    IMPORTING
      encoded        TYPE string
    RETURNING
      VALUE(decoded) TYPE string.
  CLASS-METHODS encode_base64
    IMPORTING
      unencoded      TYPE string
    RETURNING
      VALUE(encoded) TYPE string.
  METHODS create_abs_url
    IMPORTING
      protocol    TYPE string DEFAULT ''
      host        TYPE string DEFAULT ''
      port        TYPE string DEFAULT ''
      path        TYPE string DEFAULT ''
      querystring TYPE string DEFAULT ''
    RETURNING
      VALUE(url)  TYPE string.
  METHODS create_rel_url
    IMPORTING
      path        TYPE string DEFAULT ''
      querystring TYPE string DEFAULT ''
    RETURNING
      VALUE(url)  TYPE string.
  METHODS logoff
    IMPORTING
      redirect_url TYPE string OPTIONAL.
  METHODS set_session_stateful.
  METHODS enable_foreign_session_access
    IMPORTING
      url_path              TYPE string
      user_id               TYPE sy-uname OPTIONAL
      one_time_access_token TYPE abap_bool DEFAULT abap_true
    EXPORTING
      session_access_token  TYPE string
    EXCEPTIONS
      url_path_is_not_supported
      user_unknown
      session_is_not_stateful
      internal_error.
  CLASS-METHODS escape_html
    IMPORTING
      unescaped TYPE string
    RETURNING
      VALUE(escaped) TYPE string.
  METHODS validate_xsrf_token
    IMPORTING
      token             TYPE string OPTIONAL
    EXPORTING
      VALUE(successful) TYPE abap_bool
    EXCEPTIONS
      token_not_found
      cookie_not_found
      internal_error
      called_by_public_service.
  CLASS-METHODS unescape_url
    IMPORTING
      escaped TYPE string
    RETURNING
      VALUE(unescaped) TYPE string.
ENDINTERFACE.