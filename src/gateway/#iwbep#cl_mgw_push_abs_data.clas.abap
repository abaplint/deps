CLASS /iwbep/cl_mgw_push_abs_data DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_mgw_abs_data
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES /iwbep/if_mgw_core_srv_runtime.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS /iwbep/cl_mgw_push_abs_data IMPLEMENTATION.

  METHOD /iwbep/if_mgw_core_srv_runtime~init.
    RETURN.
  ENDMETHOD.

ENDCLASS.