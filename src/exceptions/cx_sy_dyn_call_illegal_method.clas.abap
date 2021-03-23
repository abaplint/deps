CLASS cx_sy_dyn_call_illegal_method DEFINITION PUBLIC INHERITING FROM cx_dynamic_check.
  PUBLIC SECTION.
    CONSTANTS private_method TYPE string VALUE 'ABC'.
    METHODS constructor
      IMPORTING
        textid LIKE textid OPTIONAL
        classname TYPE string OPTIONAL
        methodname TYPE string OPTIONAL.
ENDCLASS.

CLASS cx_sy_dyn_call_illegal_method IMPLEMENTATION.
  METHOD constructor.
    RETURN.
  ENDMETHOD.
ENDCLASS.