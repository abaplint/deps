INTERFACE if_ixml_node PUBLIC.
  METHODS:
    append_child,
    get_attributes RETURNING VALUE(map) TYPE REF TO if_ixml_named_node_map,
    get_first_child RETURNING VALUE(node) TYPE REF TO if_ixml_node,
    get_name,
    get_value,
    set_name IMPORTING name TYPE string,
    set_value IMPORTING value TYPE string.
ENDINTERFACE.