INTERFACE if_ixml_named_node_map PUBLIC.
  METHODS:
    get_named_item_ns
      IMPORTING name TYPE string,
    get_named_item
      IMPORTING name TYPE string,
    remove_named_item
      IMPORTING name TYPE string.
ENDINTERFACE.