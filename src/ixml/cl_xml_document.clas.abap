CLASS cl_xml_document DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS parse_string IMPORTING stream TYPE string.
    METHODS parse_xstring IMPORTING
      stream TYPE xstring RETURNING VALUE(subrc) TYPE i.
    METHODS get_first_node RETURNING VALUE(node) TYPE REF TO if_ixml_node.
    METHODS display IMPORTING with_bdn TYPE c DEFAULT space.
    METHODS find_node
      IMPORTING
        name TYPE string
        root TYPE REF TO if_ixml_node OPTIONAL
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

    DATA m_document TYPE REF TO if_ixml_document.
    CONSTANTS c_ok TYPE sysubrc VALUE 0.
ENDCLASS.

CLASS cl_xml_document IMPLEMENTATION.
  METHOD parse_string.
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