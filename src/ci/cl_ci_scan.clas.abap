CLASS cl_ci_scan DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_level,
             type TYPE c LENGTH 1,
             name TYPE string,
             level TYPE i,
           END OF ty_level.

    DATA: levels TYPE STANDARD TABLE OF ty_level WITH DEFAULT KEY.

ENDCLASS.

CLASS cl_ci_scan IMPLEMENTATION.

ENDCLASS.