CLASS cx_adt_rest DEFINITION PUBLIC INHERITING FROM cx_static_check.

  PUBLIC SECTION.
    INTERFACES: if_t100_message.

    DATA:
      properties TYPE REF TO if_adt_exception_properties.

    METHODS:
      get_http_status
        RETURNING VALUE(result) TYPE string,
      get_namespace
        RETURNING VALUE(result) TYPE string,
      get_type.

    CLASS-METHODS:
      create_properties
        RETURNING
          VALUE(result) TYPE REF TO if_adt_exception_properties,
      get_longtext_from_exception
        IMPORTING
          exception TYPE REF TO cx_root
        RETURNING
          VALUE(result) TYPE string.

    METHODS constructor
      IMPORTING
        textid LIKE if_t100_message=>t100key OPTIONAL
        previous LIKE previous OPTIONAL
        subtype TYPE sadt_exc_type OPTIONAL
        msgv1 TYPE symsgv DEFAULT sy-msgv1
        msgv2 TYPE symsgv DEFAULT sy-msgv2
        msgv3 TYPE symsgv DEFAULT sy-msgv3
        msgv4 TYPE symsgv DEFAULT sy-msgv4
        properties TYPE REF TO if_adt_exception_properties OPTIONAL.

ENDCLASS.

CLASS cx_adt_rest IMPLEMENTATION.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD get_longtext_from_exception.
    RETURN.
  ENDMETHOD.

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