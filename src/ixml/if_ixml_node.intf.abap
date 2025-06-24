INTERFACE if_ixml_node PUBLIC.
  CONSTANTS:
    co_node_element TYPE i VALUE 0,
    co_node_document TYPE i VALUE 0,
    co_node_cdata_section TYPE i VALUE 0,
    co_node_text TYPE i VALUE 0.
  METHODS:
    append_child
      IMPORTING
        new_child TYPE REF TO if_ixml_node,
    clone
      RETURNING
        VALUE(rval) TYPE REF TO if_ixml_node,
    create_iterator
      RETURNING
        VALUE(rval) TYPE REF TO if_ixml_node_iterator,
    get_attributes
      RETURNING
        VALUE(map) TYPE REF TO if_ixml_named_node_map,
    get_children
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_list,
    get_first_child
      RETURNING
        VALUE(node) TYPE REF TO if_ixml_node,
    get_height
      RETURNING
        VALUE(height) TYPE i,
    get_name
      RETURNING
        VALUE(val) TYPE string,
    get_namespace_prefix
      RETURNING
        VALUE(rv_prefix) TYPE string,
    get_namespace_uri
      RETURNING
        VALUE(rval) TYPE string,
    get_next
      RETURNING
        VALUE(next) TYPE REF TO if_ixml_node,
    get_parent
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node,
    get_type
      RETURNING
        VALUE(val) TYPE string,
    get_value
      RETURNING
        VALUE(val) TYPE string,
    query_interface
      IMPORTING
        foo        TYPE i
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_element,
    remove_child
      IMPORTING
        child TYPE REF TO if_ixml_node,
    remove_node,
    replace_child
      IMPORTING
        new_child TYPE REF TO if_ixml_node
        old_child TYPE REF TO if_ixml_node,
    set_name
      IMPORTING
        name TYPE string,
    set_value
      IMPORTING
        value       TYPE string
      RETURNING
        VALUE(rval) TYPE i.

  METHODS num_children
    RETURNING
      VALUE(rval) TYPE i.

  METHODS create_filter_name
    IMPORTING
      name        TYPE string
      namespace   TYPE string DEFAULT ''
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.

  METHODS create_filter_parent
    IMPORTING
      filter_parent TYPE REF TO if_ixml_node_filter
    RETURNING
      VALUE(rval)   TYPE REF TO if_ixml_node_filter.
ENDINTERFACE.
