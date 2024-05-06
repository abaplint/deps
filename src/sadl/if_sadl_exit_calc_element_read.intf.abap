INTERFACE if_sadl_exit_calc_element_read PUBLIC.

  TYPES tt_elements TYPE SORTED TABLE OF string WITH UNIQUE DEFAULT KEY.

  METHODS get_calculation_info IMPORTING !it_requested_calc_elements TYPE tt_elements
                                         !iv_entity                  TYPE string
                               EXPORTING !et_requested_orig_elements TYPE tt_elements
                               RAISING   cx_sadl_exit.

  METHODS calculate IMPORTING !it_original_data           TYPE STANDARD TABLE
                              !it_requested_calc_elements TYPE tt_elements
                    CHANGING  !ct_calculated_data         TYPE STANDARD TABLE
                    RAISING   cx_sadl_exit.
ENDINTERFACE.