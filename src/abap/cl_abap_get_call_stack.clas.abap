CLASS cl_abap_get_call_stack DEFINITION PUBLIC FINAL.
  PUBLIC SECTION.
    TYPES call_stack_internal TYPE STANDARD TABLE OF call_stack_entry WITH DEFAULT KEY.
    TYPES:
      BEGIN OF formatted_entry,
        stack_depth TYPE tpda_stack_level,
        kind        TYPE tpda_event_type,
        progname    TYPE tpda_program,
        includename TYPE tpda_include,
        line        TYPE tpda_sc_line,
        event       TYPE tpda_event,
      END OF formatted_entry.
    TYPES formatted_entry_stack TYPE STANDARD TABLE OF formatted_entry WITH DEFAULT KEY.

    CLASS-METHODS get_call_stack
      RETURNING VALUE(stack) TYPE call_stack_internal.

    CLASS-METHODS format_call_stack
      IMPORTING !stack                 TYPE call_stack_internal
      RETURNING VALUE(formatted_stack) TYPE formatted_stack.

    CLASS-METHODS format_call_stack_with_struct
      IMPORTING !stack                 TYPE call_stack_internal
      RETURNING VALUE(formatted_stack) TYPE formatted_entry_stack.

ENDCLASS.


CLASS cl_abap_get_call_stack IMPLEMENTATION.
  METHOD get_call_stack.
    RETURN.
  ENDMETHOD.

  METHOD format_call_stack.
    RETURN.
  ENDMETHOD.

  METHOD format_call_stack_with_struct.
    RETURN.
  ENDMETHOD.
ENDCLASS.