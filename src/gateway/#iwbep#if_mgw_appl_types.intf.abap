INTERFACE /iwbep/if_mgw_appl_types PUBLIC.

  TYPES:
    BEGIN OF ty_s_media_resource,
      mime_type TYPE string,
      value     TYPE xstring,
    END OF ty_s_media_resource.

  TYPES:
    BEGIN OF ty_s_mgw_response_context,
      count                         TYPE string,
      inlinecount                   TYPE string,
      skiptoken                     TYPE string,
      deltatoken                    TYPE string,
      expand_skiptokens             TYPE string_table,
      last_modified                 TYPE tzntstmps,
      max_age                       TYPE int4,
      is_not_modified               TYPE abap_bool,
      do_not_cache_on_client        TYPE abap_bool,
      do_cache_and_page_on_hub      TYPE abap_bool,
      age                           TYPE i,
      crp_provider_request          TYPE /iwbep/t_mgw_crp_prov_request,
      is_sap_data_exists_calculated TYPE abap_bool,
      document_description          TYPE /iwbep/if_doc_descr_types=>tys_document_description,
    END OF ty_s_mgw_response_context.

  TYPES:
    BEGIN OF ty_s_mgw_response_entity_cntxt,
      last_modified                 TYPE tzntstmps,
      max_age                       TYPE int4,
      is_not_modified               TYPE abap_bool,
      do_not_cache_on_client        TYPE abap_bool,
      age                           TYPE i,
      no_content                    TYPE abap_bool,
      is_sap_data_exists_calculated TYPE abap_bool,
    END OF ty_s_mgw_response_entity_cntxt.

ENDINTERFACE.