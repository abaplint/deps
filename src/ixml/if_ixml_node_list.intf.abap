INTERFACE if_ixml_node_list PUBLIC.

  METHODS:
    get_length
      RETURNING
        VALUE(length) TYPE i,
    create_iterator
      RETURNING VALUE(rval) TYPE REF TO if_ixml_node_iterator,
    get_item
      IMPORTING
        item TYPE REF TO if_ixml_node_list
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node,
    create_rev_iterator_filtered
      IMPORTING
        filter TYPE any
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_iterator.

ENDINTERFACE.