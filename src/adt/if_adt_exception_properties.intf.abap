INTERFACE if_adt_exception_properties PUBLIC.
  METHODS:
    get_property
      IMPORTING
        key   TYPE string
      EXPORTING
        value TYPE string,
    add_property
      IMPORTING
        key           TYPE string
        value         TYPE string
      RETURNING
        VALUE(result) TYPE REF TO if_adt_exception_properties.
ENDINTERFACE.