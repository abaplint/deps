INTERFACE /iwbep/if_mgw_appl_srv_runtime PUBLIC.

  TYPES ty_s_mgw_response_entity_cntxt TYPE string.
  TYPES ty_s_mgw_response_context TYPE string.

  METHODS get_stream
    IMPORTING
      iv_entity_name          TYPE string
      iv_entity_set_name      TYPE string
      iv_source_name          TYPE string
      it_key_tab              TYPE string
      it_navigation_path      TYPE string
      io_tech_request_context TYPE string
    EXPORTING
      er_stream               TYPE string
      es_response_context     TYPE string.

  METHODS update_stream
    IMPORTING
      iv_entity_name          TYPE string
      iv_entity_set_name      TYPE string
      iv_source_name          TYPE string
      is_media_resource       TYPE string
      it_key_tab              TYPE string
      it_navigation_path      TYPE string
      io_tech_request_context TYPE string.

  METHODS create_deep_entity
    IMPORTING
      iv_entity_name          TYPE string
      iv_entity_set_name      TYPE string
      iv_source_name          TYPE string
      io_data_provider        TYPE string
      it_key_tab              TYPE string
      it_navigation_path      TYPE string
      io_expand               TYPE string
      io_tech_request_context TYPE string
    EXPORTING
      er_deep_entitity        TYPE string.

  METHODS get_entityset
    IMPORTING
      !iv_entity_name           TYPE string OPTIONAL
      !iv_entity_set_name       TYPE string OPTIONAL
      !iv_source_name           TYPE string OPTIONAL
      !it_filter_select_options TYPE string OPTIONAL
      !it_order                 TYPE string OPTIONAL
      !is_paging                TYPE string OPTIONAL
      !it_navigation_path       TYPE string OPTIONAL
      !it_key_tab               TYPE string OPTIONAL
      !iv_filter_string         TYPE string OPTIONAL
      !iv_search_string         TYPE string OPTIONAL
      !io_tech_request_context  TYPE REF TO /iwbep/if_mgw_req_entityset OPTIONAL
    EXPORTING
      !er_entityset             TYPE REF TO data
      !es_response_context      TYPE string.

ENDINTERFACE.
