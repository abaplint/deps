INTERFACE if_ixml_document PUBLIC.
  METHODS:
    append_child
      IMPORTING
        new_child TYPE REF TO if_ixml_node,
    create_attribute_ns
      IMPORTING
        name TYPE string
        prefix TYPE string,
    create_element_ns
      IMPORTING
        name TYPE string
        prefix TYPE string,
    create_element
      IMPORTING
        name TYPE string,
    create_iterator_filtered
      IMPORTING input TYPE any,
    create_filter_and
      IMPORTING
        filter1 TYPE any
        filter2 TYPE any,
    create_iterator,
    create_filter_node_type
      IMPORTING typ TYPE string,
    create_simple_element_ns
      IMPORTING
        name TYPE string
        parent TYPE string,
    create_filter_attribute
      IMPORTING name TYPE string,
    create_simple_element
      IMPORTING
        name TYPE string
        parent TYPE string,
    find_from_name
      IMPORTING name TYPE string
      RETURNING VALUE(element) TYPE REF TO if_ixml_element,
    find_from_name_ns
      IMPORTING
        depth TYPE i
        name  TYPE string,
    find_from_path
      IMPORTING
        path TYPE string,
    get_elements_by_tag_name_ns
      IMPORTING name TYPE string,
    get_elements_by_tag_name
      IMPORTING
        depth TYPE i
        name TYPE string,
    get_root RETURNING VALUE(node) TYPE if_ixml_node,
    get_root_element RETURNING VALUE(root) TYPE REF TO if_ixml_element.
ENDINTERFACE.