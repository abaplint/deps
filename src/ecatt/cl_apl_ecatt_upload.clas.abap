CLASS cl_apl_ecatt_upload DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    METHODS:
      upload ABSTRACT
        CHANGING ch_object TYPE string,
      upload_data_from_stream ABSTRACT
        IMPORTING name TYPE string.
  PROTECTED SECTION.
    DATA: template_over_all TYPE REF TO if_ixml_document,
          exception_to_raise TYPE string,
          ecatt_object TYPE REF TO cl_apl_ecatt_object,
          tadir_preset TYPE string.
    METHODS:
      raise_upload_exception
        IMPORTING
          previous TYPE REF TO cx_root,
      get_variants_from_dom
        IMPORTING params TYPE any.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_apl_ecatt_upload IMPLEMENTATION.
  METHOD raise_upload_exception.
    RETURN.
  ENDMETHOD.

  METHOD get_variants_from_dom.
    RETURN.
  ENDMETHOD.
ENDCLASS.