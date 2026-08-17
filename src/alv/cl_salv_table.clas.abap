CLASS cl_salv_table DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS factory
      IMPORTING
        list_display   TYPE any OPTIONAL
        r_container    TYPE any OPTIONAL
        container_name TYPE any OPTIONAL
      EXPORTING
        r_salv_table   TYPE REF TO cl_salv_table
      CHANGING
        t_table        TYPE ANY TABLE
      RAISING
        cx_salv_msg.

    METHODS get_columns
      RETURNING VALUE(result) TYPE REF TO cl_salv_columns_table.
    METHODS get_display_settings
      RETURNING VALUE(result) TYPE REF TO cl_salv_display_settings.
    METHODS get_functions
      RETURNING VALUE(result) TYPE REF TO cl_salv_functions.
    METHODS display.

ENDCLASS.

CLASS cl_salv_table IMPLEMENTATION.

  METHOD factory.
    RETURN.
  ENDMETHOD.

  METHOD get_columns.
    RETURN.
  ENDMETHOD.

  METHOD get_display_settings.
    RETURN.
  ENDMETHOD.

  METHOD get_functions.
    RETURN.
  ENDMETHOD.

  METHOD display.
    RETURN.
  ENDMETHOD.

ENDCLASS.
