CLASS cl_ci_scan DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_level,
             type  TYPE c LENGTH 1,
             name  TYPE string,
             level TYPE i,
           END OF ty_level.
    TYPES: BEGIN OF ty_structure,
             type       TYPE c LENGTH 1,
             stmnt_type TYPE c LENGTH 1,
             key_start  TYPE c LENGTH 1,
             key_end    TYPE c LENGTH 1,
             stmnt_from TYPE i,
             stmnt_to   TYPE i,
             struc_from TYPE i,
             struc_to   TYPE i,
             back       TYPE i,
           END OF ty_structure.
    TYPES: BEGIN OF ty_statement,
             level      TYPE i,
             struc      TYPE i,
             from       TYPE i,
             to         TYPE i,
             number     TYPE i,
             colonrow   TYPE i,
             trow       TYPE i,
             coloncol   TYPE i,
             tcol       TYPE i,
             prefixlen  TYPE i,
             type       TYPE c LENGTH 1,
             terminator TYPE c LENGTH 1,
             enhmt      TYPE i,
           END OF ty_statement.
    TYPES: BEGIN OF ty_token,
             str  TYPE string,
             row  TYPE i,
             off2 TYPE i,
             off3 TYPE i,
             col  TYPE i,
             len1 TYPE i,
             len2 TYPE i,
             len3 TYPE i,
             type TYPE c LENGTH 1,
           END OF ty_token.
    TYPES: BEGIN OF ty_aunit,
             incl_name TYPE string,
             range_tab TYPE RANGE OF i,
           END OF ty_aunit.
    TYPES ty_level_tab TYPE STANDARD TABLE OF ty_level WITH DEFAULT KEY.
    TYPES ty_structure_tab TYPE STANDARD TABLE OF ty_structure WITH DEFAULT KEY.
    TYPES ty_statement_tab TYPE STANDARD TABLE OF ty_statement WITH DEFAULT KEY.
    TYPES ty_token_tab TYPE STANDARD TABLE OF ty_token WITH DEFAULT KEY.
    TYPES ty_aunit_tab TYPE STANDARD TABLE OF ty_aunit WITH DEFAULT KEY.

    DATA levels TYPE ty_level_tab.
    DATA structures TYPE ty_structure_tab.
    DATA statements TYPE ty_statement_tab.
    DATA tokens TYPE ty_token_tab.
    DATA aunit_tab TYPE ty_aunit_tab.
    DATA subrc TYPE i.

    METHODS determine_aunit_lines.

ENDCLASS.

CLASS cl_ci_scan IMPLEMENTATION.

  METHOD determine_aunit_lines.
    RETURN.
  ENDMETHOD.

ENDCLASS.
