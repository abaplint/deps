CLASS cl_xml_document DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS parse_string IMPORTING stream TYPE string.
    METHODS parse_xstring IMPORTING xstr TYPE xstring RETURNING VALUE(subrc) TYPE i.
    METHODS get_first_node RETURNING VALUE(node) TYPE REF TO if_ixml_node.
    METHODS display IMPORTING with_bdn TYPE c DEFAULT space.
    DATA m_document TYPE REF TO if_ixml_document.
    CONSTANTS c_ok TYPE sysubrc VALUE 0.
ENDCLASS.

CLASS cl_xml_document IMPLEMENTATION.
  METHOD parse_string.
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
ENDCLASS.