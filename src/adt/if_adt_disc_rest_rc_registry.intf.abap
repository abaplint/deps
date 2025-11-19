INTERFACE if_adt_disc_rest_rc_registry PUBLIC.
  METHODS:
    register_discoverable_resource
      IMPORTING
        url             TYPE string
        accepted_types  TYPE string_table
        handler_class   TYPE string
        description     TYPE string
        category_scheme TYPE string
        category_term   TYPE string,
    register_resource
      IMPORTING
        template      TYPE string
        handler_class TYPE string.
ENDINTERFACE.