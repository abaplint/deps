CLASS cl_abap_char_utilities DEFINITION PUBLIC.

  PUBLIC SECTION.
    CONSTANTS:
      byte_order_mark_little TYPE x LENGTH 2 VALUE 'AAAA',
      byte_order_mark_big    TYPE x LENGTH 2 VALUE 'AAAA',
      charsize               TYPE i VALUE 2,
      endian                 TYPE c LENGTH 1 VALUE 'A',
      cr_lf                  TYPE c LENGTH 2 VALUE 'AA',
      byte_order_mark_utf8   TYPE x LENGTH 3 VALUE 'AAAAAA',
      minchar                TYPE c LENGTH 1 VALUE 'A',
      maxchar                TYPE c LENGTH 1 VALUE 'A',
      horizontal_tab         TYPE c LENGTH 1 VALUE 'A',
      vertical_tab           TYPE c LENGTH 1 VALUE 'A',
      backspace              TYPE c LENGTH 1 VALUE 'A',
      form_feed              TYPE c LENGTH 1 VALUE 'A',
      newline                TYPE c LENGTH 1 VALUE 'A'.

    CLASS-METHODS get_simple_spaces_for_cur_cp
      RETURNING
        VALUE(s_str) TYPE string.

ENDCLASS.

CLASS cl_abap_char_utilities IMPLEMENTATION.

  METHOD get_simple_spaces_for_cur_cp.
    RETURN.
  ENDMETHOD.

ENDCLASS.