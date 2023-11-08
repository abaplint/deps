CLASS cx_ecatt_apl DEFINITION PUBLIC INHERITING FROM cx_static_check.
  PUBLIC SECTION.
    CONSTANTS any_text TYPE sotr_conc VALUE '11223344556677881122334455667788'.

    METHODS constructor
      IMPORTING
        textid LIKE textid OPTIONAL
        previous LIKE previous OPTIONAL
        free_text TYPE string OPTIONAL.
ENDCLASS.

CLASS cx_ecatt_apl IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

ENDCLASS.