INTERFACE /iwbep/if_mgw_req_entityset PUBLIC.

 METHODS get_filter
    RETURNING
      VALUE(ro_filter) TYPE REF TO /iwbep/if_mgw_req_filter.

ENDINTERFACE.