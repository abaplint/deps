INTERFACE /iwbep/if_mgw_conv_srv_runtime PUBLIC.

  METHODS get_message_container
    RETURNING
      VALUE(container) TYPE REF TO /iwbep/if_message_container.

  METHODS set_header
    IMPORTING
       is_header TYPE ihttpnvp.

  METHODS copy_data_to_ref
    IMPORTING
      is_data TYPE any
    CHANGING
      cr_data TYPE REF TO data.

  METHODS get_dp_facade
    RETURNING
      VALUE(ro_dp_facade) TYPE REF TO /iwbep/if_mgw_dp_facade
    RAISING
      /iwbep/cx_mgw_tech_exception.

  METHODS get_logger
    RETURNING
      VALUE(ro_logger) TYPE REF TO /iwbep/cl_cos_logger.

  METHODS check_if_is_not_modified
    IMPORTING
      io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity OPTIONAL
      is_entity_data          TYPE any OPTIONAL
    RAISING
      /iwbep/cx_mgw_busi_exception.

  METHODS move_corresponding
    IMPORTING
      is_data TYPE any
    CHANGING
      cs_data TYPE any.

  METHODS set_etag
    IMPORTING
      is_entity_data TYPE any.

  METHODS soft_state_session_start.

  METHODS soft_state_session_end.

ENDINTERFACE.