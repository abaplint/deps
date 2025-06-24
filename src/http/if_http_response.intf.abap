INTERFACE if_http_response PUBLIC.
  INTERFACES if_http_entity.

  ALIASES append_cdata FOR if_http_entity~append_cdata.
  ALIASES delete_cookie FOR if_http_entity~delete_cookie.
  ALIASES delete_cookie_secure FOR if_http_entity~delete_cookie_secure.
  ALIASES delete_header_field FOR if_http_entity~delete_header_field.
  ALIASES get_cdata FOR if_http_entity~get_cdata.
  ALIASES get_content_type FOR if_http_entity~get_content_type.
  ALIASES get_cookies FOR if_http_entity~get_cookies.
  ALIASES get_data FOR if_http_entity~get_data.
  ALIASES get_header_field FOR if_http_entity~get_header_field.
  ALIASES get_header_fields FOR if_http_entity~get_header_fields.
  ALIASES get_multipart FOR if_http_entity~get_multipart.
  ALIASES get_serialized_message_length FOR if_http_entity~get_serialized_message_length.
  ALIASES num_multiparts FOR if_http_entity~num_multiparts.
  ALIASES set_cdata FOR if_http_entity~set_cdata.
  ALIASES set_compression FOR if_http_entity~set_compression.
  ALIASES set_content_type FOR if_http_entity~set_content_type.
  ALIASES set_cookie FOR if_http_entity~set_cookie.
  ALIASES set_data FOR if_http_entity~set_data.
  ALIASES set_header_field FOR if_http_entity~set_header_field.
  ALIASES to_xstring FOR if_http_entity~to_xstring.
  ALIASES get_last_error FOR if_http_entity~get_last_error.

  METHODS:
    set_status
      IMPORTING
        code   TYPE i
        reason TYPE string,
    redirect
      IMPORTING
        url                TYPE string
        permanently        TYPE i OPTIONAL
        protocol_dependent TYPE i OPTIONAL,
    get_raw_message
      RETURNING VALUE(val) TYPE xstring,
    delete_cookie_at_client
      IMPORTING
        name   TYPE string
        path   TYPE string OPTIONAL
        domain TYPE string OPTIONAL,
    get_status
      EXPORTING
        code   TYPE i
        reason TYPE string.

  METHODS copy
    RETURNING
      VALUE(response) TYPE REF TO if_http_response.

  METHODS server_cache_expire_default
    IMPORTING
      etag              TYPE char32 OPTIONAL
      browser_dependent TYPE boolean DEFAULT ' '
      no_ufo_cache      TYPE boolean DEFAULT ' '.

  METHODS server_cache_expire_rel
    IMPORTING
      expires_rel       TYPE i
      etag              TYPE char32 OPTIONAL
      browser_dependent TYPE boolean DEFAULT ' '
      no_ufo_cache      TYPE boolean DEFAULT ' '.

  METHODS server_cache_browser_dependent
    IMPORTING
      dependent TYPE boolean DEFAULT 'X'.

  METHODS server_cache_expire_abs
    IMPORTING
      expires_abs_date  TYPE d OPTIONAL
      expires_abs_time  TYPE t OPTIONAL
      etag              TYPE char32 OPTIONAL
      browser_dependent TYPE boolean DEFAULT ' '
      no_ufo_cache      TYPE boolean DEFAULT ' '.

ENDINTERFACE.
