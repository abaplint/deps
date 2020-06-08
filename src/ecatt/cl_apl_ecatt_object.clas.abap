CLASS cl_apl_ecatt_object DEFINITION PUBLIC.
  PUBLIC SECTION.
    DATA:
      attrib TYPE REF TO cl_apl_ecatt_attributes.
    METHODS:
      close_object.
    CLASS-METHODS:
      get_tadir_entry
        EXPORTING
          ex_tadir TYPE i,
      show_object
        EXPORTING
          re_object TYPE REF TO cl_apl_ecatt_object,
      delete_object,
      existence_check_object,
      get_version_info_object
        EXPORTING
          ex_version_info TYPE STANDARD TABLE.
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