INTERFACE if_http_service_extension PUBLIC.
  METHODS handle_request
    IMPORTING
      request  TYPE REF TO object
      response TYPE REF TO object.
ENDINTERFACE.