INTERFACE if_adt_rest_request PUBLIC.
  METHODS:
    get_uri_attribute
      IMPORTING
        name      TYPE string
        mandatory TYPE abap_bool
      EXPORTING
        value     TYPE string
      RAISING
        cx_adt_rest,
    get_uri_query_parameter
      IMPORTING
        name      TYPE string
        default   TYPE string OPTIONAL
        mandatory TYPE abap_bool OPTIONAL
      EXPORTING
        value     TYPE string,
    get_uri_query_parameter_values
      IMPORTING
        name   TYPE string
      EXPORTING
        values TYPE string,
    get_body_data
      IMPORTING
        content_handler TYPE REF TO object
      EXPORTING
        data            TYPE data
      RAISING
        cx_adt_rest,
    get_inner_rest_request
      RETURNING
        VALUE(result) TYPE REF TO if_rest_request.
ENDINTERFACE.