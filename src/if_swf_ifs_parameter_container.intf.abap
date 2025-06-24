INTERFACE if_swf_ifs_parameter_container PUBLIC.

  METHODS clear IMPORTING VALUE(name)           TYPE swfdname
                          restore_default_value TYPE abap_bool DEFAULT space
                          initialize_if_null    TYPE abap_bool DEFAULT space
                EXPORTING returncode            TYPE sysubrc
                RAISING   cx_swf_cnt_container.

  METHODS get IMPORTING VALUE(name) TYPE swfdname
              EXPORTING value       TYPE any
                        unit        TYPE any
                        returncode  TYPE sysubrc
              RAISING cx_swf_cnt_container.

  METHODS get_type IMPORTING VALUE(name)  TYPE swfdname
                   EXPORTING object_type  TYPE sibfotype
                             typename     TYPE string
                             length       TYPE i
                             decimals     TYPE i
                             is_table     TYPE abap_bool
                             is_structure TYPE abap_bool
                             returncode   TYPE sysubrc
                   RAISING cx_swf_cnt_container.

  METHODS get_value_ref IMPORTING VALUE(name)       TYPE swfdname
                                 copy               TYPE xflag DEFAULT space
                                 initialize_if_null TYPE xflag DEFAULT space
                        EXPORTING VALUE(value_ref)  TYPE REF TO data
                                  VALUE(unit_ref)   TYPE REF TO data
                                  returncode        TYPE sysubrc
                        RAISING cx_swf_cnt_container.

  METHODS list_names IMPORTING only_import    TYPE abap_bool DEFAULT 'X'
                               only_export    TYPE abap_bool DEFAULT 'X'
                               only_objects   TYPE abap_bool DEFAULT space
                               list_system    TYPE abap_bool DEFAULT space
                               list_read_only TYPE abap_bool DEFAULT 'X'
                     RETURNING VALUE(names)   TYPE swfdnamtab.

  METHODS set IMPORTING VALUE(name) TYPE swfdname
                        value       TYPE any
                        unit        TYPE any OPTIONAL
              EXPORTING returncode  TYPE sysubrc
              RAISING cx_swf_cnt_container.

ENDINTERFACE.