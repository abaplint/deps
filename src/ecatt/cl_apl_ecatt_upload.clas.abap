CLASS cl_apl_ecatt_upload DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    METHODS:
      upload ABSTRACT
        CHANGING ch_object TYPE string,
      upload_data_from_stream ABSTRACT.
  PROTECTED SECTION.
    DATA: template_over_all TYPE string,
          exception_to_raise TYPE string,
          ecatt_object TYPE string,
          tadir_preset TYPE string.
    METHODS:
      raise_upload_exception,
      get_variants_from_dom.
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
