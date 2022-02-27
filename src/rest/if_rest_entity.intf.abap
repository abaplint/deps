INTERFACE if_rest_entity PUBLIC.

  METHODS set_string_data IMPORTING data TYPE string.
  METHODS get_string_data RETURNING VALUE(data) TYPE string.
  METHODS set_content_type IMPORTING iv_media_type TYPE string.
  METHODS get_header_field IMPORTING iv_name TYPE string RETURNING VALUE(val) TYPE string.
  METHODS set_header_field
    IMPORTING
      iv_name TYPE string
      iv_value TYPE string.
  METHODS get_binary_data RETURNING VALUE(data) TYPE xstring.

ENDINTERFACE.