CLASS cl_apl_ecatt_download DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    METHODS:
      download ABSTRACT
        IMPORTING
          im_object_type TYPE string
          im_object_name TYPE string
          im_load_help TYPE string
          im_object_version TYPE string,
      download_data ABSTRACT.
  PROTECTED SECTION.
    DATA: template_over_all TYPE string,
          typ TYPE string,
          wa_parm TYPE string,
          toolname TYPE string,
          ap_current_param TYPE string,
          parm TYPE string,
          root_node TYPE string,
          etpar_node TYPE string,
          ex_ecatt TYPE string,
          ecatt_object TYPE string,
          load_help TYPE string.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_apl_ecatt_download IMPLEMENTATION.

ENDCLASS.
