*"* components of interface IF_SWF_IFS_PARAMETER_CONTAINER
interface IF_SWF_IFS_PARAMETER_CONTAINER
  public .


  methods CLEAR
    importing
      value(NAME) type SWFDNAME
      !RESTORE_DEFAULT_VALUE type XFLAG default SPACE
      !INITIALIZE_IF_NULL type XFLAG default SPACE
    exporting
      !RETURNCODE type SYSUBRC
    raising
      CX_SWF_CNT_CONT_ACCESS_DENIED
      CX_SWF_CNT_ELEM_ACCESS_DENIED
      CX_SWF_CNT_ELEM_NOT_FOUND
      CX_SWF_CNT_CONTAINER .
  methods GET
    importing
      value(NAME) type SWFDNAME
    exporting
      !VALUE type ANY
      !UNIT type ANY
      !RETURNCODE type SYSUBRC
    raising
      CX_SWF_CNT_ELEM_NOT_FOUND
      CX_SWF_CNT_ELEM_TYPE_CONFLICT
      CX_SWF_CNT_UNIT_TYPE_CONFLICT
      CX_SWF_CNT_CONTAINER .
  methods GET_TYPE
    importing
      value(NAME) type SWFDNAME
    exporting
      !OBJECT_TYPE type SIBFOTYPE
      !TYPENAME type STRING
      !LENGTH type INT4
      !DECIMALS type INT4
      !IS_TABLE type XFLAG
      !IS_STRUCTURE type XFLAG
      !RETURNCODE type SYSUBRC
    raising
      CX_SWF_CNT_ELEM_NOT_FOUND
      CX_SWF_CNT_ELEM_TYPE_CONFLICT
      CX_SWF_CNT_UNIT_TYPE_CONFLICT
      CX_SWF_CNT_CONTAINER .
  methods GET_VALUE_REF
    importing
      value(NAME) type SWFDNAME
      !COPY type XFLAG default SPACE
      !INITIALIZE_IF_NULL type XFLAG default SPACE
    exporting
      value(VALUE_REF) type ref to DATA
      value(UNIT_REF) type ref to DATA
      !RETURNCODE type SYSUBRC
    raising
      CX_SWF_CNT_ELEM_NOT_FOUND
      CX_SWF_CNT_ELEM_TYPE_CONFLICT
      CX_SWF_CNT_UNIT_TYPE_CONFLICT
      CX_SWF_CNT_CONTAINER .
  methods LIST_NAMES
    importing
      !ONLY_IMPORT type XFELD default 'X'
      !ONLY_EXPORT type XFELD default 'X'
      !ONLY_OBJECTS type XFELD default SPACE
      !LIST_SYSTEM type XFELD default SPACE
      !LIST_READ_ONLY type XFELD default 'X'
    returning
      value(NAMES) type SWFDNAMTAB .
  methods SET
    importing
      value(NAME) type SWFDNAME
      !VALUE type ANY
      !UNIT type ANY optional
    exporting
      !RETURNCODE type SYSUBRC
    raising
      CX_SWF_CNT_CONT_ACCESS_DENIED
      CX_SWF_CNT_ELEM_ACCESS_DENIED
      CX_SWF_CNT_ELEM_NOT_FOUND
      CX_SWF_CNT_ELEM_TYPE_CONFLICT
      CX_SWF_CNT_UNIT_TYPE_CONFLICT
      CX_SWF_CNT_ELEM_DEF_INVALID
      CX_SWF_CNT_CONTAINER .
endinterface.
