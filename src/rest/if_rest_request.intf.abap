INTERFACE if_rest_request PUBLIC.

  METHODS:
    get_header_field
      IMPORTING
        iv_name    TYPE string
      RETURNING
        VALUE(val) TYPE string.

ENDINTERFACE.