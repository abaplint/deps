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
          load_help TYPE string,
          ecatt_script TYPE REF TO cl_apl_ecatt_script,
          ecatt_extprog TYPE REF TO cl_apl_ecatt_extprog.

    METHODS:
      set_attributes_to_template,
      get_general_params_data,
      raise_download_exception,
      set_general_params_data_to_dom,
      set_deep_stru_to_dom,
      set_variants_to_dom,
      set_deep_data_to_dom,
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