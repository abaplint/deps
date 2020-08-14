INTERFACE if_ixml_node_list PUBLIC.

  METHODS:
    get_item
      IMPORTING
        item TYPE if_ixml_node_list
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node,
    create_rev_iterator_filtered
      IMPORTING
        filter TYPE any
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_iterator.

ENDINTERFACE.