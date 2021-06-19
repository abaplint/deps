INTERFACE /iwbep/if_mgw_appl_srv_runtime PUBLIC.
  TYPES ty_s_mgw_response_entity_cntxt TYPE /iwbep/if_mgw_appl_types=>ty_s_mgw_response_entity_cntxt.
  TYPES ty_s_media_resource TYPE /iwbep/if_mgw_appl_types=>ty_s_media_resource.
  METHODS:
    get_stream
      IMPORTING
        !iv_entity_name          TYPE string OPTIONAL
        !iv_entity_set_name      TYPE string OPTIONAL
        !iv_source_name          TYPE string OPTIONAL
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path OPTIONAL
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity OPTIONAL
      EXPORTING
        !er_stream               TYPE REF TO data
        !es_response_context     TYPE ty_s_mgw_response_entity_cntxt
      RAISING
        /iwbep/cx_mgw_busi_exception
        /iwbep/cx_mgw_tech_exception,
    update_stream
      IMPORTING
        !iv_entity_name          TYPE string OPTIONAL
        !iv_entity_set_name      TYPE string OPTIONAL
        !iv_source_name          TYPE string OPTIONAL
        !is_media_resource       TYPE ty_s_media_resource
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path OPTIONAL
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_u OPTIONAL
      RAISING
        /iwbep/cx_mgw_busi_exception
        /iwbep/cx_mgw_tech_exception.
ENDINTERFACE.