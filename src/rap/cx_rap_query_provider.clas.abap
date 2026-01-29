CLASS cx_rap_query_provider DEFINITION
  PUBLIC
  INHERITING FROM cx_rap_provider
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor IMPORTING !textid   LIKE if_t100_message=>t100key OPTIONAL
                                  !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS cx_rap_query_provider IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    RETURN.
  ENDMETHOD.
ENDCLASS.
