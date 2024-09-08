CLASS cl_amc_channel_manager DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS co_comm_type_synchronous TYPE i VALUE 1.
    CONSTANTS co_comm_type_asynchronous TYPE i VALUE 2.

    CLASS-METHODS create_message_producer
      IMPORTING
        !i_application_id       TYPE string
        VALUE(i_channel_id)     TYPE string
        !i_channel_extension_id TYPE string OPTIONAL
        !i_communication_type   TYPE i DEFAULT 1
        !i_suppress_echo        TYPE abap_bool DEFAULT abap_false
        !i_channel_filter       TYPE string OPTIONAL
      RETURNING
        VALUE(r_producer)       TYPE REF TO if_amc_message_producer
      RAISING
        cx_amc_error.
    CLASS-METHODS create_message_consumer
      IMPORTING
        !i_application_id       TYPE string
        VALUE(i_channel_id)     TYPE string
        !i_channel_extension_id TYPE string OPTIONAL
        !i_channel_filter       TYPE string OPTIONAL
      RETURNING
        VALUE(r_consumer)       TYPE REF TO if_amc_message_consumer
      RAISING
        cx_amc_error.
    CLASS-METHODS get_consumer_session_id
      RETURNING
        VALUE(r_session_id) TYPE string
      RAISING
        cx_amc_error.
    CLASS-METHODS create_message_producer_by_id
      IMPORTING
        !i_application_id       TYPE if_abap_channel_types=>ty_amc_application_id
        VALUE(i_channel_id)     TYPE if_abap_channel_types=>ty_amc_channel_id
        !i_channel_extension_id TYPE if_abap_channel_types=>ty_amc_channel_extension_id OPTIONAL
        !i_consumer_session_id  TYPE if_abap_channel_types=>ty_amc_consumer_session_id
        !i_communication_type   TYPE i DEFAULT co_comm_type_asynchronous
        !i_channel_filter       TYPE if_abap_channel_types=>ty_amc_channel_filter OPTIONAL
      RETURNING
        VALUE(r_producer)       TYPE REF TO if_amc_message_producer
      RAISING
        cx_amc_error.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS cl_amc_channel_manager IMPLEMENTATION.

  METHOD create_message_producer_by_id.
    RETURN.
  ENDMETHOD.

  METHOD get_consumer_session_id.
    RETURN.
  ENDMETHOD.

  METHOD create_message_consumer.
    RETURN.
  ENDMETHOD.

  METHOD create_message_producer.
    RETURN.
  ENDMETHOD.

ENDCLASS.