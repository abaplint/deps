INTERFACE if_rap_query_response PUBLIC.

  METHODS set_data IMPORTING it_data TYPE STANDARD TABLE
                   RAISING   cx_rap_query_response_set_twic.

  METHODS set_total_number_of_records IMPORTING iv_total_number_of_records TYPE int8
                                      RAISING   cx_rap_query_response_set_twic.

ENDINTERFACE.
