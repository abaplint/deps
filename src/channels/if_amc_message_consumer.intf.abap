interface IF_AMC_MESSAGE_CONSUMER
  public .


  methods START_MESSAGE_DELIVERY
    importing
      !I_RECEIVER type ref to IF_AMC_MESSAGE_RECEIVER
    raising
      CX_AMC_ERROR .

  methods STOP_MESSAGE_DELIVERY
    importing
      !I_RECEIVER type ref to IF_AMC_MESSAGE_RECEIVER
    raising
      CX_AMC_ERROR .
      
endinterface.