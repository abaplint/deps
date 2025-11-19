INTERFACE if_apc_wsp_extension
  PUBLIC.

  METHODS on_accept
    IMPORTING
      !i_context_base TYPE REF TO if_apc_wsp_server_context_base
    EXPORTING
      !e_connect_mode TYPE i.
  METHODS on_start
    IMPORTING
      !i_context         TYPE REF TO if_apc_wsp_server_context_base
      !i_message_manager TYPE string.
  METHODS on_message
    IMPORTING
      !i_message         TYPE string
      !i_message_manager TYPE string
      !i_context         TYPE string.
  METHODS on_close
    IMPORTING
      !i_reason       TYPE string
      !i_code         TYPE i
      !i_context_base TYPE REF TO if_apc_wsp_server_context_base.
  METHODS on_error
    IMPORTING
      !i_reason       TYPE string
      !i_code         TYPE i
      !i_context_base TYPE REF TO if_apc_wsp_server_context_base.

ENDINTERFACE.
