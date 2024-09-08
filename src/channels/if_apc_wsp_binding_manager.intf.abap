INTERFACE if_apc_wsp_binding_manager
  PUBLIC.

  METHODS bind_amc_message_consumer
    IMPORTING
      !i_application_id       TYPE string
      !i_channel_id           TYPE string
      !i_channel_extension_id TYPE string OPTIONAL
      !i_channel_filter       TYPE string OPTIONAL
    RAISING
      cx_apc_error.

  METHODS unbind_amc_message_consumer
    IMPORTING
      !i_application_id       TYPE string
      !i_channel_id           TYPE string
      !i_channel_extension_id TYPE string OPTIONAL
    RAISING
      cx_apc_error.

ENDINTERFACE.