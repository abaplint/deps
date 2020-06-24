CLASS cl_rest_http_handler DEFINITION PUBLIC.

  PUBLIC SECTION.
    INTERFACES:
      if_http_extension,
      if_rest_application.

ENDCLASS.

CLASS cl_rest_http_handler IMPLEMENTATION.

  METHOD if_http_extension~handle_request.
    RETURN.
  ENDMETHOD.

  METHOD if_rest_application~get_root_handler.
    RETURN.
  ENDMETHOD.

ENDCLASS.