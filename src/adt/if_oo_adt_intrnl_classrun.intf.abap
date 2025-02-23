INTERFACE if_oo_adt_intrnl_classrun PUBLIC.
  METHODS write
    IMPORTING 
      data TYPE any
      name TYPE string OPTIONAL.
  METHODS write_text
    IMPORTING
      text          TYPE clike
    RETURNING
      VALUE(output) TYPE REF TO if_oo_adt_intrnl_classrun.
ENDINTERFACE.
