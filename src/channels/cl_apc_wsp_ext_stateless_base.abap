class CL_APC_WSP_EXT_STATELESS_BASE definition
  public
  create public.

    public section.

    interfaces IF_APC_WSP_EXTENSION.

    PROTECTED SECTION.
    PRIVATE SECTION.

ENDCLASS.

CLASS CL_APC_WSP_EXT_STATELESS_BASE IMPLEMENTATION.

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