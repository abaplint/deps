INTERFACE if_amc_message_context
  PUBLIC .

  METHODS get_producer_client
    RETURNING
      VALUE(r_client) TYPE string.
  METHODS get_producer_username
    RETURNING
      VALUE(r_username) TYPE string .
ENDINTERFACE.