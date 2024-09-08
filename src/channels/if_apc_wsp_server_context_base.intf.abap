INTERFACE if_apc_wsp_server_context_base
  PUBLIC .


  METHODS get_binding_manager
    RETURNING
      VALUE(r_binding_manager) TYPE REF TO if_apc_wsp_binding_manager
    RAISING
      cx_apc_error .
  METHODS get_connection_id
    RETURNING
      VALUE(r_connection_id) TYPE string
    RAISING
      cx_apc_error .
      
ENDINTERFACE.