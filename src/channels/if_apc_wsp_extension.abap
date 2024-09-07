interface IF_APC_WSP_EXTENSION
  public .
  
  methods ON_ACCEPT
    importing
      !I_CONTEXT_BASE type ref to IF_APC_WSP_SERVER_CONTEXT_BASE
    exporting
      !E_CONNECT_MODE type I .
  methods ON_START
    importing
      !I_CONTEXT type ref to IF_APC_WSP_SERVER_CONTEXT
      !I_MESSAGE_MANAGER type ref to IF_APC_WSP_MESSAGE_MANAGER .
  methods ON_MESSAGE
    importing
      !I_MESSAGE type ref to IF_APC_WSP_MESSAGE
      !I_MESSAGE_MANAGER type ref to IF_APC_WSP_MESSAGE_MANAGER
      !I_CONTEXT type ref to IF_APC_WSP_SERVER_CONTEXT .
  methods ON_CLOSE
    importing
      !I_REASON type STRING
      !I_CODE type I
      !I_CONTEXT_BASE type ref to IF_APC_WSP_SERVER_CONTEXT_BASE .
  methods ON_ERROR
    importing
      !I_REASON type STRING
      !I_CODE type I
      !I_CONTEXT_BASE type ref to IF_APC_WSP_SERVER_CONTEXT_BASE .
      
endinterface.