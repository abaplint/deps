*"* components of interface IF_SWF_IFS_PARAMETER_CONTAINER
INTERFACE if_swf_ifs_parameter_container
  PUBLIC.


  METHODS clear
    IMPORTING
      VALUE(name) TYPE swfdname
      !restore_default_value TYPE xflag DEFAULT space
      !initialize_if_null TYPE xflag DEFAULT space
    EXPORTING
      !returncode TYPE sysubrc
    RAISING
      cx_swf_cnt_cont_access_denied
      cx_swf_cnt_elem_access_denied
      cx_swf_cnt_elem_not_found
      cx_swf_cnt_container.
  METHODS get
    IMPORTING
      VALUE(name) TYPE swfdname
    EXPORTING
      !value TYPE any
      !unit TYPE any
      !returncode TYPE sysubrc
    RAISING
      cx_swf_cnt_elem_not_found
      cx_swf_cnt_elem_type_conflict
      cx_swf_cnt_unit_type_conflict
      cx_swf_cnt_container.
  METHODS get_type
    IMPORTING
      VALUE(name) TYPE swfdname
    EXPORTING
      !object_type TYPE sibfotype
      !typename TYPE string
      !length TYPE int4
      !decimals TYPE int4
      !is_table TYPE xflag
      !is_structure TYPE xflag
      !returncode TYPE sysubrc
    RAISING
      cx_swf_cnt_elem_not_found
      cx_swf_cnt_elem_type_conflict
      cx_swf_cnt_unit_type_conflict
      cx_swf_cnt_container.
  METHODS get_value_ref
    IMPORTING
      VALUE(name) TYPE swfdname
      !copy TYPE xflag DEFAULT space
      !initialize_if_null TYPE xflag DEFAULT space
    EXPORTING
      VALUE(value_ref) TYPE REF TO data
      VALUE(unit_ref) TYPE REF TO data
      !returncode TYPE sysubrc
    RAISING
      cx_swf_cnt_elem_not_found
      cx_swf_cnt_elem_type_conflict
      cx_swf_cnt_unit_type_conflict
      cx_swf_cnt_container.
  METHODS list_names
    IMPORTING
      !only_import TYPE xfeld DEFAULT 'X'
      !only_export TYPE xfeld DEFAULT 'X'
      !only_objects TYPE xfeld DEFAULT space
      !list_system TYPE xfeld DEFAULT space
      !list_read_only TYPE xfeld DEFAULT 'X'
    RETURNING
      VALUE(names) TYPE swfdnamtab.
  METHODS set
    IMPORTING
      VALUE(name) TYPE swfdname
      !value TYPE any
      !unit TYPE any OPTIONAL
    EXPORTING
      !returncode TYPE sysubrc
    RAISING
      cx_swf_cnt_cont_access_denied
      cx_swf_cnt_elem_access_denied
      cx_swf_cnt_elem_not_found
      cx_swf_cnt_elem_type_conflict
      cx_swf_cnt_unit_type_conflict
      cx_swf_cnt_elem_def_invalid
      cx_swf_cnt_container.
ENDINTERFACE.