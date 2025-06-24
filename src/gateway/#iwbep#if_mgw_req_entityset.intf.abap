INTERFACE /iwbep/if_mgw_req_entityset PUBLIC.

  METHODS get_filter
    RETURNING
      VALUE(ro_filter) TYPE REF TO /iwbep/if_mgw_req_filter.

  METHODS get_entity_set_name
    RETURNING
      VALUE(rv_entity_set) TYPE /iwbep/mgw_tech_name.

ENDINTERFACE.