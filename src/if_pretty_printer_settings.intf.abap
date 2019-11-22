INTERFACE if_pretty_printer_settings PUBLIC.

  METHODS get_case_mode
    RETURNING
      VALUE(case_mode) TYPE i.

  METHODS get_ident_mode
    RETURNING
      VALUE(ident_mode) TYPE i.

  METHODS get_line_length
    RETURNING
      VALUE(length) TYPE i.

  METHODS get_source_type
    RETURNING
      VALUE(source_type) TYPE trobjtype.

ENDINTERFACE.
