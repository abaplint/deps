INTERFACE if_rest_response PUBLIC.

  METHODS create_entity RETURNING VALUE(entity) TYPE REF TO if_rest_entity.

ENDINTERFACE.