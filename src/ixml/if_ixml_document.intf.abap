INTERFACE if_ixml_document PUBLIC.
  INTERFACES if_ixml_node.

  ALIASES create_filter_parent
    FOR if_ixml_node~create_filter_parent.

  METHODS:
    set_declaration
      IMPORTING
        declaration TYPE abap_bool,
    set_encoding
      IMPORTING
        encoding TYPE REF TO object,
    set_standalone
      IMPORTING
        standalone TYPE abap_bool,
    set_namespace_prefix
      IMPORTING
        prefix TYPE string,
    append_child
      IMPORTING
        new_child   TYPE REF TO if_ixml_node
      RETURNING
        VALUE(rval) TYPE i,
    get_first_child
      RETURNING
        VALUE(child) TYPE REF TO if_ixml_node,
    create_attribute_ns
      IMPORTING
        name           TYPE string
        prefix         TYPE string OPTIONAL
      RETURNING
        VALUE(element) TYPE REF TO if_ixml_attribute,
    create_element_ns
      IMPORTING
        name           TYPE string
        prefix         TYPE string OPTIONAL
      RETURNING
        VALUE(element) TYPE REF TO if_ixml_element,
    create_element
      IMPORTING
        name           TYPE string
      RETURNING
        VALUE(element) TYPE REF TO if_ixml_element,
    create_iterator_filtered
      IMPORTING
        input      TYPE any
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_iterator.

  METHODS:
    create_filter_and
      IMPORTING
        filter1    TYPE any
        filter2    TYPE any
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_filter,
    create_iterator
      IMPORTING
        depth       TYPE i DEFAULT 0
      RETURNING
        VALUE(rval) TYPE REF TO if_ixml_node_iterator,
    create_filter_node_type
      IMPORTING
        typ        TYPE i
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_filter,
    create_simple_element_ns
      IMPORTING
        name       TYPE string
        parent     TYPE REF TO if_ixml_node
        prefix     TYPE string OPTIONAL
        value      TYPE string OPTIONAL
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_element,
    create_filter_attribute
      IMPORTING
        name       TYPE string
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_filter,
    create_simple_element
      IMPORTING
        name       TYPE string
        value      TYPE string OPTIONAL
        parent     TYPE REF TO if_ixml_node
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_element,
    find_from_name
      IMPORTING
        name           TYPE string
        namespace      TYPE string OPTIONAL
      RETURNING
        VALUE(element) TYPE REF TO if_ixml_element,
    find_from_name_ns
      IMPORTING
        depth          TYPE i OPTIONAL
        name           TYPE string
        uri            TYPE string OPTIONAL
      RETURNING
        VALUE(element) TYPE REF TO if_ixml_element,
    find_from_path
      IMPORTING
        path       TYPE string
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_element,
    get_elements_by_tag_name_ns
      IMPORTING
        name       TYPE string
        namespace  TYPE string OPTIONAL
        uri        TYPE string OPTIONAL
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_collection,
    get_elements_by_tag_name
      IMPORTING
        depth      TYPE i OPTIONAL
        name       TYPE string
        namespace  TYPE string OPTIONAL
        uri        TYPE string OPTIONAL
      RETURNING
        VALUE(val) TYPE REF TO if_ixml_node_collection,
    create_namespace_decl
      IMPORTING
        name        TYPE string
        prefix      TYPE string
        uri         TYPE string
      RETURNING
        VALUE(attr) TYPE REF TO if_ixml_attribute,
    get_root RETURNING VALUE(node) TYPE REF TO if_ixml_node,
    create_text IMPORTING text TYPE clike RETURNING VALUE(text) TYPE REF TO object,
    get_root_element RETURNING VALUE(root) TYPE REF TO if_ixml_element,
    get_first_node RETURNING VALUE(node) TYPE REF TO if_ixml_node,
    create_filter_name_ns
      IMPORTING
        name          TYPE string
        namespace     TYPE string OPTIONAL
      RETURNING
        VALUE(filter) TYPE REF TO if_ixml_node_filter.

  METHODS create_filter_name
    IMPORTING
      name        TYPE string
    RETURNING
      VALUE(rval) TYPE REF TO if_ixml_node_filter.
ENDINTERFACE.
