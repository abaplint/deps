CLASS cl_xml_document DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        description TYPE any OPTIONAL
        object_type TYPE any OPTIONAL
        object_name TYPE any OPTIONAL.

    METHODS render_2_string
      IMPORTING
        pretty_print   TYPE xflag DEFAULT 'X'
      EXPORTING
        VALUE(retcode) TYPE sysubrc
        stream         TYPE string
        size           TYPE sytabix.
    METHODS create_with_data
      IMPORTING
        name           TYPE string DEFAULT 'DATA'
        dataobject     TYPE any
      RETURNING
        VALUE(retcode) TYPE sysubrc.

    METHODS parse_string
      IMPORTING
        stream         TYPE string
      RETURNING
        VALUE(retcode) TYPE i.

    METHODS parse_xstring IMPORTING
      stream TYPE xstring RETURNING VALUE(subrc) TYPE i.
    METHODS get_first_node RETURNING VALUE(node) TYPE REF TO if_ixml_node.
    METHODS display IMPORTING with_bdn TYPE c DEFAULT space.
    METHODS find_node
      IMPORTING
        name        TYPE string
        root        TYPE REF TO if_ixml_node OPTIONAL
      RETURNING
        VALUE(node) TYPE REF TO if_ixml_node.
    METHODS get_data
      IMPORTING
        name       TYPE string OPTIONAL
      EXPORTING
        retcode    TYPE sysubrc
      CHANGING
        dataobject TYPE any.
    METHODS get_node_data
      IMPORTING
        node       TYPE REF TO if_ixml_node
      EXPORTING
        dataobject TYPE any
        retcode    TYPE sysubrc.
    METHODS set_data
      IMPORTING
        name           TYPE string DEFAULT 'DATA'
        alias          TYPE string OPTIONAL
        dataobject     TYPE any
        parent_node    TYPE REF TO if_ixml_node OPTIONAL
        control        TYPE dcxmlsercl OPTIONAL
      RETURNING
        VALUE(retcode) TYPE sysubrc.
    METHODS create_simple_element
      IMPORTING
        name            TYPE string
        namespace       TYPE string OPTIONAL
        value           TYPE string OPTIONAL
        parent          TYPE REF TO if_ixml_node OPTIONAL
      RETURNING
        VALUE(new_node) TYPE REF TO if_ixml_node.
    METHODS set_encoding
      IMPORTING
        charset TYPE string.
    METHODS render_2_xstring
      IMPORTING
        pretty_print TYPE abap_bool DEFAULT abap_true
      EXPORTING
        retcode      TYPE sysubrc
        stream       TYPE xstring
        size         TYPE sytabix.

    DATA m_document TYPE REF TO if_ixml_document.
    CONSTANTS c_ok TYPE sysubrc VALUE 0.
    CONSTANTS c_bor_classtype TYPE c LENGTH 2 VALUE 'BO'.
ENDCLASS.

CLASS cl_xml_document IMPLEMENTATION.
  METHOD constructor.
    RETURN.
  ENDMETHOD.

  METHOD create_with_data.
    RETURN.
  ENDMETHOD.

  METHOD render_2_string.
    RETURN.
  ENDMETHOD.

  METHOD parse_string.
    RETURN.
  ENDMETHOD.

  METHOD render_2_xstring.
    RETURN.
  ENDMETHOD.

  METHOD set_encoding.
    RETURN.
  ENDMETHOD.

  METHOD create_simple_element.
    RETURN.
  ENDMETHOD.

  METHOD set_data.
    RETURN.
  ENDMETHOD.

  METHOD get_node_data.
    RETURN.
  ENDMETHOD.

  METHOD parse_xstring.
    RETURN.
  ENDMETHOD.

  METHOD get_first_node.
    RETURN.
  ENDMETHOD.

  METHOD display.
    RETURN.
  ENDMETHOD.

  METHOD find_node.
    RETURN.
  ENDMETHOD.

  METHOD get_data.
    RETURN.
  ENDMETHOD.
ENDCLASS.
