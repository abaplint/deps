class CL_ABAP_GET_CALL_STACK definition public final.
  public section.
    types call_stack_internal TYPE STANDARD TABLE OF call_stack_entry WITH DEFAULT KEY .
    types:
      begin of FORMATTED_ENTRY,
            stack_depth type tpda_stack_level,
            kind type tpda_event_type,
            progname type tpda_program,
            includename type tpda_include,
            line type tpda_sc_line,
            event type tpda_event,
      END OF FORMATTED_ENTRY .
    types FORMATTED_ENTRY_STACK type STANDARD TABLE OF formatted_entry WITH DEFAULT KEY .

  class-methods GET_CALL_STACK
    returning
      value(STACK) type CALL_STACK_INTERNAL .

  class-methods FORMAT_CALL_STACK
    importing
      !STACK type CALL_STACK_INTERNAL
    returning
      value(FORMATTED_STACK) type FORMATTED_STACK .

  class-methods FORMAT_CALL_STACK_WITH_STRUCT
    importing
      !STACK type CALL_STACK_INTERNAL
    returning
      value(FORMATTED_STACK) type FORMATTED_ENTRY_STACK .

ENDCLASS.

CLASS CL_ABAP_GET_CALL_STACK IMPLEMENTATION.

  method GET_CALL_STACK.
  endmethod.

  method FORMAT_CALL_STACK.
  endmethod.

  method FORMAT_CALL_STACK_WITH_STRUCT.
  endmethod.

ENDCLASS.