CLASS cl_xml_document DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS parse_string IMPORTING stream TYPE string.
    METHODS parse_xstring IMPORTING xstr TYPE xstring RETURNING VALUE(subrc) TYPE i.
    METHODS get_first_node RETURNING VALUE(node) TYPE REF TO if_ixml_node.
    DATA m_document TYPE REF TO if_ixml_document.
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
ENDCLASS.