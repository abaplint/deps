INTERFACE /iwbep/if_mgw_appl_types PUBLIC.
  TYPES:
    BEGIN OF ty_s_mgw_response_entity_cntxt,
      last_modified                 TYPE tzntstmps,
      max_age                       TYPE i,
      is_not_modified               TYPE abap_bool,
      do_not_cache_on_client        TYPE abap_bool,
      age                           TYPE i,
      no_content                    TYPE abap_bool,
      is_sap_data_exists_calculated TYPE abap_bool,
    END OF ty_s_mgw_response_entity_cntxt.
  TYPES:
    BEGIN OF ty_s_media_resource,
      mime_type TYPE string,
      value     TYPE xstring,
    END OF ty_s_media_resource.
ENDINTERFACE.