INTERFACE bi_event_handler_static PUBLIC.

  CLASS-METHODS on_event
    IMPORTING
      sender TYPE string
      event TYPE string
      event_container TYPE string
      rectype TYPE string
      handler TYPE string
    RETURNING
      VALUE(result) TYPE string.

ENDINTERFACE.
