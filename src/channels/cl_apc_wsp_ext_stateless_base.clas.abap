CLASS cl_apc_wsp_ext_stateless_base DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_apc_wsp_extension.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS cl_apc_wsp_ext_stateless_base IMPLEMENTATION.

  METHOD if_apc_wsp_extension~on_error.
    RETURN.
  ENDMETHOD.

  METHOD if_apc_wsp_extension~on_close.
    RETURN.
  ENDMETHOD.

  METHOD if_apc_wsp_extension~on_message.
    RETURN.
  ENDMETHOD.

  METHOD if_apc_wsp_extension~on_start.
    RETURN.
  ENDMETHOD.

  METHOD if_apc_wsp_extension~on_accept.
    RETURN.
  ENDMETHOD.

ENDCLASS.