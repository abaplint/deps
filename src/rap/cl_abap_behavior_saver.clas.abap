CLASS cl_abap_behavior_saver DEFINITION PUBLIC INHERITING FROM cl_abap_behv CREATE PROTECTED.

  PUBLIC SECTION.
    DATA in_phase TYPE if_abap_behv=>t_phase READ-ONLY.

  PROTECTED SECTION.

    METHODS finalize
      CHANGING
        failed   TYPE data
        reported TYPE data.
    METHODS check_before_save
      CHANGING
        failed   TYPE data
        reported TYPE data.
    METHODS adjust_numbers
      CHANGING
        mapped   TYPE data
        reported TYPE data OPTIONAL
        failed   TYPE data OPTIONAL.
    METHODS save
      CHANGING
        reported TYPE data OPTIONAL
        failed   TYPE data OPTIONAL.
    METHODS cleanup.
    METHODS cleanup_finalize.
    METHODS save_modified
      IMPORTING
        create   TYPE data
        update   TYPE data
        delete   TYPE data
      CHANGING
        reported TYPE data OPTIONAL
        failed   TYPE data OPTIONAL.
    METHODS map_messages
      CHANGING
        reported TYPE data.
ENDCLASS.

CLASS cl_abap_behavior_saver IMPLEMENTATION.
  METHOD finalize.
    RETURN.
  ENDMETHOD.

  METHOD check_before_save.
    RETURN.
  ENDMETHOD.

  METHOD adjust_numbers.
    RETURN.
  ENDMETHOD.

  METHOD save.
    RETURN.
  ENDMETHOD.

  METHOD cleanup.
    RETURN.
  ENDMETHOD.

  METHOD cleanup_finalize.
    RETURN.
  ENDMETHOD.

  METHOD save_modified.
    RETURN.
  ENDMETHOD.

  METHOD map_messages.
    RETURN.
  ENDMETHOD.
ENDCLASS.