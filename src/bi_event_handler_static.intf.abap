INTERFACE bi_event_handler_static PUBLIC.

  TYPES: BEGIN OF ty_sender,
           typeid TYPE string,
           instid TYPE string,
         END OF ty_sender.

  CLASS-METHODS on_event
    IMPORTING
      sender          TYPE ty_sender
      event           TYPE string
      event_container TYPE REF TO if_swf_ifs_parameter_container
      rectype         TYPE string
      handler         TYPE string
    RETURNING
      VALUE(result)   TYPE string.

ENDINTERFACE.
