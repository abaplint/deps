INTERFACE /iwbep/if_mgw_req_entityset PUBLIC.

  METHODS get_filter
    RETURNING
      VALUE(ro_filter) TYPE REF TO /iwbep/if_mgw_req_filter.

  METHODS get_entity_set_name
    RETURNING
      VALUE(rv_entity_set) TYPE /iwbep/mgw_tech_name.

  METHODS get_entity_type_name
      RETURNING
        VALUE(rv_entity_type) TYPE /iwbep/mgw_tech_name.

  METHODS get_osql_where_clause
    RETURNING
      VALUE(rv_osql_where_clause) TYPE string
    RAISING
      /iwbep/cx_mgw_busi_exception.

  METHODS get_orderby
    RETURNING
      VALUE(rt_orderby) TYPE /iwbep/t_mgw_tech_order.

ENDINTERFACE.