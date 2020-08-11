INTERFACE if_ixml_node_list PUBLIC.

  METHODS:
    get_item
      IMPORTING
        item TYPE if_ixml_node_list
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node.

ENDINTERFACE.