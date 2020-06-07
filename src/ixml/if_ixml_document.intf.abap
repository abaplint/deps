INTERFACE if_ixml_document PUBLIC.
  METHODS:
    append_child,
    create_attribute_ns,
    create_element_ns,
    create_element,
    create_iterator_filtered,
    create_iterator,
    create_simple_element_ns,
    create_simple_element,
    find_from_name RETURNING VALUE(element) TYPE REF TO if_ixml_element,
    find_from_name_ns,
    find_from_path,
    get_elements_by_tag_name_ns,
    get_elements_by_tag_name,
    get_root RETURNING VALUE(node) TYPE if_ixml_node,
    get_root_element RETURNING VALUE(root) TYPE REF TO if_ixml_element.
ENDINTERFACE.