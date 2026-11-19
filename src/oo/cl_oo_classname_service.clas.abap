CLASS cl_oo_classname_service DEFINITION PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS get_classpool_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_interfacepool_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_pubsec_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_prosec_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_prisec_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_intfsec_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_ccdef_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_ccimp_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_ccmac_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_ccau_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_cl_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_cs_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_ct_name
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE programm.

    CLASS-METHODS get_clsname_by_include
      IMPORTING
        incname        TYPE programm
      RETURNING
        VALUE(clsname) TYPE seoclsname.

    CLASS-METHODS get_method_include
      IMPORTING
        mtdkey        TYPE seocpdkey
      RETURNING
        VALUE(result) TYPE programm
      EXCEPTIONS
        class_not_existing
        method_not_existing.

    CLASS-METHODS get_method_by_include
      IMPORTING
        incname       TYPE programm
      RETURNING
        VALUE(mtdkey) TYPE seocpdkey
      EXCEPTIONS
        class_not_existing
        method_not_existing.

    CLASS-METHODS get_all_method_includes
      IMPORTING
        clsname       TYPE seoclsname
      RETURNING
        VALUE(result) TYPE seop_methods_w_include
      EXCEPTIONS
        class_not_existing.

ENDCLASS.

CLASS cl_oo_classname_service IMPLEMENTATION.

  METHOD get_classpool_name.
    RETURN.
  ENDMETHOD.

  METHOD get_interfacepool_name.
    RETURN.
  ENDMETHOD.

  METHOD get_pubsec_name.
    RETURN.
  ENDMETHOD.

  METHOD get_prosec_name.
    RETURN.
  ENDMETHOD.

  METHOD get_prisec_name.
    RETURN.
  ENDMETHOD.

  METHOD get_intfsec_name.
    RETURN.
  ENDMETHOD.

  METHOD get_ccdef_name.
    RETURN.
  ENDMETHOD.

  METHOD get_ccimp_name.
    RETURN.
  ENDMETHOD.

  METHOD get_ccmac_name.
    RETURN.
  ENDMETHOD.

  METHOD get_ccau_name.
    RETURN.
  ENDMETHOD.

  METHOD get_cl_name.
    RETURN.
  ENDMETHOD.

  METHOD get_cs_name.
    RETURN.
  ENDMETHOD.

  METHOD get_ct_name.
    RETURN.
  ENDMETHOD.

  METHOD get_clsname_by_include.
    RETURN.
  ENDMETHOD.

  METHOD get_method_include.
    RETURN.
  ENDMETHOD.

  METHOD get_method_by_include.
    RETURN.
  ENDMETHOD.

  METHOD get_all_method_includes.
    RETURN.
  ENDMETHOD.

ENDCLASS.
