interface IF_AMC_MESSAGE_RECEIVER_TEXT
  public .

  interfaces IF_AMC_MESSAGE_RECEIVER .

  methods RECEIVE
    importing
      !I_MESSAGE type STRING
      !I_CONTEXT type ref to IF_AMC_MESSAGE_CONTEXT .

endinterface.