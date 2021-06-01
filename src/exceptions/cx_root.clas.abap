CLASS cx_root DEFINITION ABSTRACT PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_message.
    INTERFACES if_serializable_object.

    ALIASES get_longtext FOR if_message~get_longtext.
    ALIASES get_text FOR if_message~get_text.

    DATA textid TYPE c LENGTH 32.
    DATA previous TYPE REF TO cx_root.
    DATA is_resumable TYPE abap_bool.

    METHODS get_source_position
      IMPORTING
        program_name TYPE sy-repid
        include_name TYPE sy-repid
        source_line TYPE i.

ENDCLASS.

CLASS cx_root IMPLEMENTATION.
  METHOD if_message~get_text.
    RETURN.
  ENDMETHOD.

  METHOD get_source_position.
    RETURN.
  ENDMETHOD.

  METHOD if_message~get_longtext.
    RETURN.
  ENDMETHOD.
ENDCLASS.