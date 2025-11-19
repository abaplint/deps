INTERFACE if_mgw_odata_model PUBLIC.

  METHODS get_entity_type
    IMPORTING
      !iv_entity_name       TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_entity_name
    RETURNING
      VALUE(ro_entity_type) TYPE REF TO /iwbep/if_mgw_odata_entity_typ
    RAISING
      /iwbep/cx_mgw_med_exception.
ENDINTERFACE.