INTERFACE /iwbep/if_message_container PUBLIC.
  METHODS add_message_text_only
    IMPORTING
      iv_msg_type TYPE string
      iv_msg_text TYPE string.
ENDINTERFACE.