CLASS cl_adt_rest_resource DEFINITION PUBLIC.

  PUBLIC SECTION.
    METHODS:
      delete
        IMPORTING
          request  TYPE REF TO if_adt_rest_request
          response TYPE REF TO if_adt_rest_response
          context  TYPE REF TO if_rest_context OPTIONAL
        RAISING
          cx_adt_rest,
      get
        IMPORTING
          request  TYPE REF TO if_adt_rest_request
          response TYPE REF TO if_adt_rest_response
          context  TYPE REF TO if_rest_context OPTIONAL
        RAISING
          cx_adt_rest,
      post
        IMPORTING
          request  TYPE REF TO if_adt_rest_request
          response TYPE REF TO if_adt_rest_response
          context  TYPE REF TO if_rest_context OPTIONAL
        RAISING
          cx_adt_rest.

ENDCLASS.

CLASS cl_adt_rest_resource IMPLEMENTATION.

  METHOD delete.
    RETURN.
  ENDMETHOD.

  METHOD get.
    RETURN.
  ENDMETHOD.

  METHOD post.
    RETURN.
  ENDMETHOD.

ENDCLASS.