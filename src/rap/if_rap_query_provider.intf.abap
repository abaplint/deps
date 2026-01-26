INTERFACE if_rap_query_provider PUBLIC.

  TYPES BEGIN OF tx_contract.
  TYPES select TYPE if_abap_tx_read=>ty_weak.
  TYPES END OF tx_contract.

  METHODS select IMPORTING io_request  TYPE REF TO if_rap_query_request
                           io_response TYPE REF TO if_rap_query_response
                 RAISING   cx_rap_query_prov_not_impl
                           cx_rap_query_provider.

ENDINTERFACE.
