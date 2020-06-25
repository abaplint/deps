INTERFACE if_adt_exception_properties PUBLIC.
  METHODS:
    add_property
      IMPORTING
        key   TYPE string
        value TYPE string.
ENDINTERFACE.