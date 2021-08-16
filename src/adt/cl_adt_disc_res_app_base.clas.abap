CLASS cl_adt_disc_res_app_base DEFINITION PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_adt_rest_rfc_application.

    METHODS:
      get_application_title
        RETURNING VALUE(result) TYPE string,
      register_resources
        IMPORTING registry TYPE REF TO if_adt_disc_rest_rc_registry.

ENDCLASS.

CLASS cl_adt_disc_res_app_base IMPLEMENTATION.

  METHOD get_application_title.
    RETURN.
  ENDMETHOD.

  METHOD register_resources.
    RETURN.
  ENDMETHOD.

  METHOD if_adt_rest_rfc_application~get_static_uri_path.
    RETURN.
  ENDMETHOD.

ENDCLASS.