CLASS /iwbep/cl_mgw_abs_model DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES /iwbep/if_mgw_med_load.
    METHODS:
      define ABSTRACT
        RAISING
          /iwbep/cx_mgw_med_exception.
ENDCLASS.

CLASS /iwbep/cl_mgw_abs_model IMPLEMENTATION.

ENDCLASS.