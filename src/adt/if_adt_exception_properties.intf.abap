INTERFACE if_adt_exception_properties PUBLIC.
  METHODS:
    add_property
      IMPORTING
        key   TYPE string
        value TYPE string
      RETURNING
        VALUE(result) TYPE REF TO if_adt_exception_properties.
ENDINTERFACE.