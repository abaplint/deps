CLASS cl_abap_char_utilities DEFINITION PUBLIC.

  PUBLIC SECTION.
    CONSTANTS:
      charsize             TYPE i VALUE 2,
      cr_lf                TYPE c LENGTH 2 VALUE 'AA',
      byte_order_mark_utf8 TYPE c LENGTH 1 VALUE 'A',
      minchar              TYPE c LENGTH 1 VALUE 'A',
      horizontal_tab       TYPE c LENGTH 1 VALUE 'A',
      newline              TYPE c LENGTH 1 VALUE 'A'.

ENDCLASS.

CLASS cl_abap_char_utilities IMPLEMENTATION.

ENDCLASS.