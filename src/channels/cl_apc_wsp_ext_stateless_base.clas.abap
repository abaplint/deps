class cl_apc_wsp_ext_stateless_base definition
  public
  create public.

    public section.

    interfaces IF_APC_WSP_EXTENSION.

    PROTECTED SECTION.
    PRIVATE SECTION.

ENDCLASS.

CLASS cl_apc_wsp_ext_stateless_base IMPLEMENTATION.

    METHOD ON_ERROR.
      RETURN.
    ENDMETHOD.

    METHOD ON_CLOSE.
        RETURN.
      ENDMETHOD.

      METHOD ON_MESSAGE.
        RETURN.
      ENDMETHOD.

      METHOD ON_START.
        RETURN.
      ENDMETHOD.

      METHOD ON_ACCEPT.
        RETURN.
      ENDMETHOD.
endclass.