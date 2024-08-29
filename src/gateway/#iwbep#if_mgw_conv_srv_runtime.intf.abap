INTERFACE /iwbep/if_mgw_conv_srv_runtime PUBLIC.

  METHODS get_message_container
    RETURNING VALUE(container) TYPE REF TO /iwbep/if_message_container.

  METHODS set_header IMPORTING value TYPE any.

  METHODS COPY_DATA_TO_REF
    importing
      !IS_DATA type ANY
    changing
      !CR_DATA type ref to DATA .

ENDINTERFACE.