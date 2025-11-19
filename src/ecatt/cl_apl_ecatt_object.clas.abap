CLASS cl_apl_ecatt_object DEFINITION PUBLIC.
  PUBLIC SECTION.
    DATA attrib         TYPE REF TO cl_apl_ecatt_attributes.
    DATA object_name    TYPE etobj_name READ-ONLY.
    DATA object_version TYPE etobj_ver READ-ONLY.
    DATA object_type    TYPE etobj_type READ-ONLY.

    METHODS:
      close_object
        IMPORTING
          im_suppress_events TYPE abap_bool OPTIONAL
          im_object_usage    TYPE REF TO object OPTIONAL.
    CLASS-METHODS:
      get_tadir_entry
        IMPORTING
          im_obj_name TYPE string
          im_obj_type TYPE string
        EXPORTING
          ex_tadir    TYPE i,
      show_object
        IMPORTING
          im_obj_type TYPE string
          im_name     TYPE string
          im_version  TYPE string
        EXPORTING
          re_object   TYPE REF TO cl_apl_ecatt_object,
      delete_object
        IMPORTING
          im_obj_type            TYPE string
          im_name                TYPE string
          im_version             TYPE any
          im_delete_all_versions TYPE abap_bool,
      existence_check_object
        IMPORTING
          im_name               TYPE string
          im_version            TYPE string
          im_obj_type           TYPE string
          im_exists_any_version TYPE abap_bool
        RETURNING VALUE(val)    TYPE abap_bool,
      get_version_info_object
        IMPORTING
          im_name         TYPE string
          im_obj_type     TYPE string
        EXPORTING
          ex_version_info TYPE STANDARD TABLE.

    EVENTS ev_object_saved
      EXPORTING
        VALUE(ex_ecatt_object) TYPE REF TO cl_apl_ecatt_object OPTIONAL
        VALUE(ex_new_object)   TYPE abap_bool DEFAULT space.
ENDCLASS.

CLASS cl_apl_ecatt_object IMPLEMENTATION.
  METHOD existence_check_object.
    RETURN.
  ENDMETHOD.

  METHOD close_object.
    RETURN.
  ENDMETHOD.

  METHOD show_object.
    RETURN.
  ENDMETHOD.

  METHOD get_tadir_entry.
    RETURN.
  ENDMETHOD.

  METHOD get_version_info_object.
    RETURN.
  ENDMETHOD.

  METHOD delete_object.
    RETURN.
  ENDMETHOD.
ENDCLASS.