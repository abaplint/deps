INTERFACE if_rap_query_request PUBLIC.

  METHODS get_entity_id RETURNING VALUE(rv_entity_id) TYPE string.

  METHODS is_data_requested RETURNING VALUE(rv_is_requested) TYPE abap_bool.

  METHODS is_total_numb_of_rec_requested RETURNING VALUE(rv_is_requested) TYPE abap_bool.

  METHODS get_filter RETURNING VALUE(ro_filter) TYPE REF TO if_rap_query_filter.

  METHODS get_paging RETURNING VALUE(ro_paging) TYPE REF TO if_rap_query_paging.

  TYPES: BEGIN OF ty_sort_element,
           element_name TYPE string,
           descending   TYPE abap_bool,
         END OF ty_sort_element.
  TYPES tt_sort_elements TYPE STANDARD TABLE OF ty_sort_element WITH DEFAULT KEY.
  METHODS get_sort_elements RETURNING VALUE(rt_sort_elements) TYPE tt_sort_elements.

  TYPES: BEGIN OF ty_parameter,
           parameter_name TYPE string,
           value          TYPE string,
         END OF ty_parameter.
  TYPES tt_parameters TYPE STANDARD TABLE OF ty_parameter WITH DEFAULT KEY.
  METHODS get_parameters RETURNING VALUE(rt_parameters) TYPE tt_parameters.

  METHODS get_aggregation RETURNING VALUE(ro_aggregation) TYPE REF TO if_rap_query_aggregation.

  METHODS get_search_expression RETURNING VALUE(rv_search_expression) TYPE string.

  TYPES tt_requested_elements TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
  METHODS get_requested_elements RETURNING VALUE(rt_requested_elements) TYPE tt_requested_elements.

ENDINTERFACE.
