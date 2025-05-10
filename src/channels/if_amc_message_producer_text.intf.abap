INTERFACE if_amc_message_producer_text
  PUBLIC.


  INTERFACES if_amc_message_producer.

  METHODS send
    IMPORTING
      !i_message TYPE string
    RAISING
      cx_amc_error.

ENDINTERFACE.