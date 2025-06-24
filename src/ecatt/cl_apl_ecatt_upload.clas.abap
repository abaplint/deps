CLASS cl_apl_ecatt_upload DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_object,
        d_devclass TYPE string,
        i_devclass TYPE string,
        d_obj_name TYPE string,
        d_obj_ver  TYPE string,
        s_obj_type TYPE string,
        filename   TYPE string,
      END OF ty_object.
    METHODS:
      upload ABSTRACT
        CHANGING ch_object TYPE ty_object,
      upload_data_from_stream ABSTRACT
        IMPORTING name TYPE string
        RAISING cx_ecatt_apl.
  PROTECTED SECTION.
    DATA: template_over_all TYPE REF TO if_ixml_document,
          exception_to_raise TYPE REF TO cx_root,
          ecatt_object TYPE REF TO cl_apl_ecatt_object,
          tadir_preset TYPE string.
    METHODS:
      raise_upload_exception
        IMPORTING
          previous      TYPE REF TO cx_root OPTIONAL
          called_method TYPE string OPTIONAL,
      get_variants_from_dom
        IMPORTING
          params TYPE any.
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