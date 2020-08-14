CLASS cl_rest_resource DEFINITION PUBLIC.

  PUBLIC SECTION.
    INTERFACES:
      if_rest_resource,
      if_rest_handler.

    DATA mo_request TYPE REF TO if_rest_request.
    DATA mo_response TYPE REF TO if_rest_response.

ENDCLASS.

CLASS cl_rest_resource IMPLEMENTATION.

  METHOD if_rest_resource~post.
    RETURN.
  ENDMETHOD.

ENDCLASS.