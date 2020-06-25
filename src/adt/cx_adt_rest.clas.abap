CLASS cx_adt_rest DEFINITION PUBLIC INHERITING FROM cx_static_check.

  PUBLIC SECTION.
    METHODS:
      get_http_status
        RETURNING VALUE(result) TYPE string,
      get_namespace
        RETURNING VALUE(result) TYPE string,
      get_type.

ENDCLASS.

CLASS cx_adt_rest IMPLEMENTATION.

  METHOD get_http_status.
    RETURN.
  ENDMETHOD.

  METHOD get_namespace.
    RETURN.
  ENDMETHOD.

  METHOD get_type.
    RETURN.
  ENDMETHOD.

ENDCLASS.