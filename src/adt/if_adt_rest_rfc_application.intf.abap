INTERFACE if_adt_rest_rfc_application PUBLIC.
  METHODS:
    get_static_uri_path
      RETURNING
        VALUE(result) TYPE string.
ENDINTERFACE.