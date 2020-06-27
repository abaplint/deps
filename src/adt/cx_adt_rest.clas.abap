CLASS cx_adt_rest DEFINITION PUBLIC INHERITING FROM cx_static_check.

  PUBLIC SECTION.
    INTERFACES: if_t100_message.

    METHODS:
      get_http_status
        RETURNING VALUE(result) TYPE string,
      get_namespace
        RETURNING VALUE(result) TYPE string,
      get_type.

    CLASS-METHODS:
      create_properties
        RETURNING
          VALUE(result) TYPE REF TO if_adt_exception_properties.

ENDCLASS.

CLASS cx_adt_rest IMPLEMENTATION.

  METHOD create_properties.
    RETURN.
  ENDMETHOD.

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