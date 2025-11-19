CLASS cl_apl_ecatt_download DEFINITION PUBLIC CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_foobar,
        val_type   TYPE string,
        value      TYPE string,
        pstruc_typ TYPE string,
        xmlref_typ TYPE string,
        pindex     TYPE i,
      END OF ty_foobar.

    DATA parm TYPE STANDARD TABLE OF ty_foobar.

    METHODS:
      download ABSTRACT
        IMPORTING
          im_object_type    TYPE string
          im_object_name    TYPE string
          im_load_help      TYPE string
          im_object_version TYPE string
        RAISING
          cx_ecatt_apl,
      download_data ABSTRACT.
  PROTECTED SECTION.
    DATA: template_over_all TYPE REF TO if_ixml_document,
          typ TYPE string,
          wa_parm LIKE LINE OF parm,
          toolname TYPE string,
          ap_current_param TYPE REF TO if_ixml_element,
          root_node TYPE REF TO if_ixml_element,
          etpar_node TYPE REF TO if_ixml_element,
          ex_ecatt TYPE REF TO cx_root,
          ecatt_object TYPE REF TO cl_apl_ecatt_object,
          load_help TYPE string,
          ecatt_script TYPE REF TO cl_apl_ecatt_script,
          ecatt_extprog TYPE REF TO cl_apl_ecatt_extprog.

    METHODS:
      set_attributes_to_template,
      get_general_params_data
        IMPORTING
          im_params TYPE any
          im_ptyp   TYPE string OPTIONAL,
      raise_download_exception
        IMPORTING
          previous      TYPE REF TO cx_root
          textid        LIKE cx_root=>textid
          free_text     TYPE string OPTIONAL
          called_method TYPE string OPTIONAL,
      set_general_params_data_to_dom,
      set_deep_stru_to_dom
        IMPORTING data TYPE any,
      set_variants_to_dom
        IMPORTING
          params TYPE any,
      set_deep_data_to_dom
        IMPORTING
          im_params TYPE any
          im_pindex TYPE i OPTIONAL,
      set_var_mode_to_dom.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_apl_ecatt_download IMPLEMENTATION.
  METHOD set_variants_to_dom.
    RETURN.
  ENDMETHOD.

  METHOD set_attributes_to_template.
    RETURN.
  ENDMETHOD.

  METHOD raise_download_exception.
    RETURN.
  ENDMETHOD.

  METHOD set_var_mode_to_dom.
    RETURN.
  ENDMETHOD.

  METHOD get_general_params_data.
    RETURN.
  ENDMETHOD.

  METHOD set_general_params_data_to_dom.
    RETURN.
  ENDMETHOD.

  METHOD set_deep_stru_to_dom.
    RETURN.
  ENDMETHOD.

  METHOD set_deep_data_to_dom.
    RETURN.
  ENDMETHOD.
ENDCLASS.