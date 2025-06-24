INTERFACE if_constraint PUBLIC.

  METHODS
    is_valid
      IMPORTING
        data_object   TYPE data
      RETURNING
        VALUE(result) TYPE abap_bool.

  TYPES ty_string_tab TYPE STANDARD TABLE OF string WITH DEFAULT KEY.

  METHODS
    get_description
      RETURNING
        VALUE(result) TYPE ty_string_tab.

ENDINTERFACE.