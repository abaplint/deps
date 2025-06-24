INTERFACE if_http_server PUBLIC.

  DATA response TYPE REF TO if_http_response.
  DATA request TYPE REF TO if_http_request.

  CONSTANTS co_disabled TYPE i VALUE 0.
  CONSTANTS co_enabled TYPE i VALUE 1.
  CONSTANTS authmethod_service TYPE i VALUE 4.

  CLASS-DATA session_id TYPE string READ-ONLY.
  CLASS-DATA authentication_method TYPE i READ-ONLY.
  CLASS-DATA authenticated TYPE i READ-ONLY.

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
      delete_mysapsso2_cookie TYPE abap_bool OPTIONAL
      propagate_logoff        TYPE abap_bool OPTIONAL
      redirect_url            TYPE string OPTIONAL.

  METHODS set_session_stateful
    IMPORTING
      stateful TYPE i DEFAULT co_enabled
      path     TYPE string OPTIONAL.

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
      unescaped      TYPE string
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
      escaped          TYPE string
    RETURNING
      VALUE(unescaped) TYPE string.

  CLASS-METHODS escape_url
    IMPORTING
      unescaped      TYPE string
    RETURNING
      VALUE(escaped) TYPE string.

  CLASS-METHODS get_extension_info
    IMPORTING
      extension_class TYPE string OPTIONAL
    EXPORTING
      urls            TYPE tihttpurls2.

  CLASS-METHODS get_extension_url
    IMPORTING
      extension_class TYPE string
    EXPORTING
      urls            TYPE tihttpurls.

  METHODS get_last_error
    RETURNING
      VALUE(rc) TYPE i.

  CLASS-METHODS get_location
    IMPORTING
      protocol            TYPE csequence OPTIONAL
      application         TYPE csequence OPTIONAL
      for_domain          TYPE csequence OPTIONAL
      server              TYPE REF TO if_http_server OPTIONAL
      use_ticket_protocol TYPE abap_bool DEFAULT abap_true
    EXPORTING
      host                TYPE string
      port                TYPE string
      out_protocol        TYPE string
      vh_switch           TYPE abap_bool
    RETURNING
      VALUE(url_part)     TYPE string.

  CLASS-METHODS get_location_exception
    IMPORTING
      protocol            TYPE csequence OPTIONAL
      application         TYPE csequence OPTIONAL
      for_domain          TYPE csequence OPTIONAL
      server              TYPE REF TO if_http_server OPTIONAL
      use_ticket_protocol TYPE abap_bool DEFAULT abap_true
    EXPORTING
      host                TYPE string
      port                TYPE string
      out_protocol        TYPE string
      vh_switch           TYPE abap_bool
    RETURNING
      VALUE(url_part)     TYPE string.

  METHODS get_xsrf_token
    EXPORTING
      token TYPE string
    EXCEPTIONS
      internal_error
      called_by_public_service.

  METHODS send_page.

  METHODS set_compression
    IMPORTING
      options TYPE i OPTIONAL
    EXCEPTIONS
      compression_not_possible.

  METHODS set_page
    IMPORTING
      response_page_type           TYPE icf_page_type OPTIONAL
      response_option              TYPE icf_page_option OPTIONAL
      response_option_page         TYPE icf_response_page OPTIONAL
      response_option_redirect_url TYPE icf_redirect_url OPTIONAL
    EXCEPTIONS
      invalid_parameter
      document_not_found.

  METHODS set_session_stateful_via_url
    IMPORTING
      stateful    TYPE i DEFAULT co_enabled
    CHANGING
      rewrite_url TYPE string DEFAULT ''.
ENDINTERFACE.