CLASS /iwbep/cl_mgw_abs_data DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES /iwbep/if_mgw_appl_srv_runtime.

    CONSTANTS:
      BEGIN OF gcs_methods,
        get_stream         TYPE string VALUE 'GET_STREAM',
        update_stream      TYPE string VALUE 'UPDATE_STREAM',
      END OF gcs_methods.

ENDCLASS.

CLASS /iwbep/cl_mgw_abs_data IMPLEMENTATION.
  METHOD /iwbep/if_mgw_appl_srv_runtime~get_stream.

    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = /iwbep/cx_mgw_tech_exception=>method_not_implemented
        method = gcs_methods-get_stream.

  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~update_stream.

    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = /iwbep/cx_mgw_tech_exception=>method_not_implemented
        method = gcs_methods-update_stream.

  ENDMETHOD.
ENDCLASS.