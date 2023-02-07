INTERFACE if_rest_response PUBLIC.

  METHODS create_entity
    RETURNING
      VALUE(entity) TYPE REF TO if_rest_entity.

  METHODS set_status
    IMPORTING
      iv_status        TYPE i
      iv_reason_phrase TYPE string OPTIONAL.

ENDINTERFACE.