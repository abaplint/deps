INTERFACE if_ixml_attribute PUBLIC.
  METHODS get_value RETURNING VALUE(val) TYPE string.
  METHODS set_value IMPORTING value TYPE string.
  METHODS get_name RETURNING VALUE(name) TYPE string.
ENDINTERFACE.