CLASS cl_adt_rest_resource DEFINITION PUBLIC.

  PUBLIC SECTION.
    METHODS:
      delete,
      get,
      post.

    DATA:
      request TYPE string,
      context TYPE string,
      response TYPE string.

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