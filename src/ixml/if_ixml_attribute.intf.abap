INTERFACE if_ixml_attribute PUBLIC.
  INTERFACES if_ixml_node.
  METHODS get_value RETURNING VALUE(val) TYPE string.
  METHODS set_value IMPORTING value TYPE string
    RETURNING
      VALUE(rval)                   TYPE i.
  METHODS get_name RETURNING VALUE(name) TYPE string.
ENDINTERFACE.