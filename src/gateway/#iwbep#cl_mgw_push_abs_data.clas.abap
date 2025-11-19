CLASS /iwbep/cl_mgw_push_abs_data DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES /iwbep/if_mgw_core_srv_runtime.
    INTERFACES /iwbep/if_mgw_conv_srv_runtime.
    INTERFACES /iwbep/if_mgw_appl_srv_runtime.

    ALIASES check_if_is_not_modified
      FOR /iwbep/if_mgw_conv_srv_runtime~check_if_is_not_modified.
    ALIASES copy_data_to_ref
      FOR /iwbep/if_mgw_conv_srv_runtime~copy_data_to_ref.
    ALIASES move_corresponding
      FOR /iwbep/if_mgw_conv_srv_runtime~move_corresponding.
    ALIASES set_etag
      FOR /iwbep/if_mgw_conv_srv_runtime~set_etag.
    ALIASES set_header
      FOR /iwbep/if_mgw_conv_srv_runtime~set_header.
    ALIASES soft_state_session_end
      FOR /iwbep/if_mgw_conv_srv_runtime~soft_state_session_end.
    ALIASES soft_state_session_start
      FOR /iwbep/if_mgw_conv_srv_runtime~soft_state_session_start.

    TYPES ty_s_media_resource TYPE /iwbep/if_mgw_core_srv_runtime=>ty_s_media_resource.
  PROTECTED SECTION.
    DATA mo_context TYPE REF TO /iwbep/if_mgw_context.
    METHODS check_subscription_authority
      IMPORTING
        is_subscription_data TYPE /iwbep/s_mgw_db_sub_data
      RAISING
        /iwbep/cx_mgw_busi_exception
        /iwbep/cx_mgw_tech_exception.
  PRIVATE SECTION.

ENDCLASS.

CLASS /iwbep/cl_mgw_push_abs_data IMPLEMENTATION.
  METHOD /iwbep/if_mgw_appl_srv_runtime~get_expanded_entity.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~get_is_conditional_implemented.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_conv_srv_runtime~get_logger.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_conv_srv_runtime~get_dp_facade.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~create_stream.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~update_entity.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~get_entity.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~delete_entity.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~create_entity.
    RETURN.
  ENDMETHOD.

  METHOD copy_data_to_ref.
    RETURN.
  ENDMETHOD.

  METHOD check_subscription_authority.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~create_deep_entity.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~get_stream.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~update_stream.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_core_srv_runtime~init.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_conv_srv_runtime~get_message_container.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_conv_srv_runtime~set_header.
    RETURN.
  ENDMETHOD.

  METHOD /iwbep/if_mgw_appl_srv_runtime~get_entityset.
    RETURN.
  ENDMETHOD.

ENDCLASS.