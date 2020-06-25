INTERFACE if_adt_rest_response PUBLIC.
  METHODS:
    set_status
      IMPORTING
        status TYPE i,
    set_body_data
      IMPORTING
        content_handler TYPE REF TO object
        data            TYPE data.
ENDINTERFACE.