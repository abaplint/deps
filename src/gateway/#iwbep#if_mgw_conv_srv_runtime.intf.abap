INTERFACE /iwbep/if_mgw_conv_srv_runtime PUBLIC.

  METHODS get_message_container
    RETURNING VALUE(container) TYPE REF TO /iwbep/if_message_container.

  METHODS set_header IMPORTING value TYPE any.

  METHODS copy_data_to_ref
    IMPORTING
      !is_data TYPE any
    CHANGING
      !cr_data TYPE REF TO data.

ENDINTERFACE.