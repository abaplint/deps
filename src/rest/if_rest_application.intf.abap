INTERFACE if_rest_application PUBLIC.

  METHODS get_root_handler RETURNING VALUE(ro_root_handler) TYPE REF TO if_rest_handler.

ENDINTERFACE.