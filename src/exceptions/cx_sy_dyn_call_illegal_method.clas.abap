CLASS cx_sy_dyn_call_illegal_method DEFINITION PUBLIC INHERITING FROM cx_dynamic_check.
  PUBLIC SECTION.
  CONSTANTS private_method TYPE sotr_conc VALUE '11111111111111111111111111111111'.
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