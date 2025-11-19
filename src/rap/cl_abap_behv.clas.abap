CLASS cl_abap_behv DEFINITION PUBLIC CREATE PROTECTED.

  PUBLIC SECTION.

    TYPES t_cid  TYPE abp_behv_cid.
    TYPES t_flag TYPE abp_behv_flag.
    TYPES t_pid  TYPE abp_behv_pid.

    CONSTANTS flag_null TYPE abp_behv_flag VALUE '00'.
    CONSTANTS flag_changed TYPE abp_behv_flag VALUE '01'.
    CONSTANTS flag_error TYPE abp_behv_flag VALUE '80'.

    CONSTANTS:
      BEGIN OF co_techfield_name,
        control    TYPE c LENGTH 30 VALUE '%CONTROL',
        cid        TYPE c LENGTH 30 VALUE '%CID',
        cid_ref    TYPE c LENGTH 30 VALUE '%CID_REF',
        pre        TYPE c LENGTH 30 VALUE '%PRE',
        pid        TYPE c LENGTH 30 VALUE '%PID',
        tmp        TYPE c LENGTH 30 VALUE '%TMP',
        pky        TYPE c LENGTH 30 VALUE '%PKY',
        tky        TYPE c LENGTH 30 VALUE '%TKY',
        key        TYPE c LENGTH 30 VALUE '%KEY',
        data       TYPE c LENGTH 30 VALUE '%DATA',
        param      TYPE c LENGTH 30 VALUE '%PARAM',
        target     TYPE c LENGTH 30 VALUE '%TARGET',
        fail       TYPE c LENGTH 30 VALUE '%FAIL',
        msg        TYPE c LENGTH 30 VALUE '%MSG',
        other      TYPE c LENGTH 30 VALUE '%OTHER',
        element    TYPE c LENGTH 30 VALUE '%ELEMENT',
        field      TYPE c LENGTH 30 VALUE '%FIELD',
        create     TYPE c LENGTH 30 VALUE '%CREATE',
        update     TYPE c LENGTH 30 VALUE '%UPDATE',
        delete     TYPE c LENGTH 30 VALUE '%DELETE',
        assoc      TYPE c LENGTH 30 VALUE '%ASSOC',
        action     TYPE c LENGTH 30 VALUE '%ACTION',
        op         TYPE c LENGTH 30 VALUE '%OP',
        perm       TYPE c LENGTH 30 VALUE '%PERM',
        path       TYPE c LENGTH 30 VALUE '%PATH',
        is_draft   TYPE c LENGTH 30 VALUE '%IS_DRAFT',
        link_src   TYPE c LENGTH 30 VALUE 'SOURCE',
        link_trg   TYPE c LENGTH 30 VALUE 'TARGET',
        state_area TYPE c LENGTH 30 VALUE '%STATE_AREA',
        msg_global TYPE c LENGTH 30 VALUE '%GLOBAL',
        instances  TYPE c LENGTH 30 VALUE 'INSTANCES',
        global     TYPE c LENGTH 30 VALUE 'GLOBAL',
      END OF co_techfield_name.

    CONSTANTS:
      BEGIN OF co_key_name,
      draft   TYPE c LENGTH 30 VALUE 'DRAFT',
      cid     TYPE c LENGTH 30 VALUE 'CID',
      pid     TYPE c LENGTH 30 VALUE 'PID',
      entity  TYPE c LENGTH 30 VALUE 'ENTITY',
      END OF co_key_name.
  PROTECTED SECTION.

    CONSTANTS ms LIKE if_abap_behv_message=>severity VALUE if_abap_behv_message=>severity.
    CONSTANTS mc LIKE if_abap_behv=>cause VALUE if_abap_behv=>cause.

    METHODS new_message
      IMPORTING
        id         TYPE symsgid
        number     TYPE symsgno
        severity   TYPE if_abap_behv_message=>t_severity
        v1         TYPE simple OPTIONAL
        v2         TYPE simple OPTIONAL
        v3         TYPE simple OPTIONAL
        v4         TYPE simple OPTIONAL
      RETURNING
        VALUE(obj) TYPE REF TO if_abap_behv_message.
    METHODS new_message_with_text
      IMPORTING
        severity   TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-error
        text       TYPE csequence OPTIONAL
      RETURNING
        VALUE(obj) TYPE REF TO if_abap_behv_message.
ENDCLASS.

CLASS cl_abap_behv IMPLEMENTATION.

  METHOD new_message.
    RETURN.
  ENDMETHOD.

  METHOD new_message_with_text.
    RETURN.
  ENDMETHOD.

ENDCLASS.