INTERFACE if_ixml_element PUBLIC.
  METHODS:
    append_child
      IMPORTING
       new_child TYPE REF TO if_ixml_element,
    clone,
    create_filter_node_type
      IMPORTING name TYPE string,
    create_iterator,
    find_from_name_ns
      IMPORTING name TYPE string,
    get_attribute_node
      IMPORTING name TYPE string,
    get_attribute_ns
      IMPORTING
        name TYPE string,
    get_attribute
      IMPORTING
        name TYPE string,
    get_children,
    get_elements_by_tag_name_ns
      IMPORTING name TYPE string,
    get_first_child,
    get_value,
    remove_attribute
      IMPORTING name TYPE string,
    remove_node,
    render
      IMPORTING
        ostream TYPE any,
    set_attribute_node_ns
      IMPORTING
        attr TYPE any,
    set_attribute
      IMPORTING
        name TYPE string
        namespace TYPE string
        value TYPE string,
    set_value
      IMPORTING
        value TYPE string.
ENDINTERFACE.