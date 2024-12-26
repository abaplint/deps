CLASS cx_abap_utclong_invalid DEFINITION PUBLIC INHERITING FROM cx_abap_datfm FINAL CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    METHODS constructor
      IMPORTING
        textid        LIKE textid OPTIONAL
        previous      LIKE previous OPTIONAL
        valid_example TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cx_static_check IMPLEMENTATION.

  METHOD constructor.
    RETURN.
  ENDMETHOD.

ENDCLASS.
