CLASS cl_shm_area DEFINITION ABSTRACT PUBLIC.

  PUBLIC SECTION.
    CONSTANTS affect_all_servers TYPE c LENGTH 1 VALUE 'A'.
    CONSTANTS default_instance TYPE c LENGTH 1 VALUE 'B'.
    CONSTANTS attach_mode_default TYPE c LENGTH 1 VALUE 'C'.
    CONSTANTS life_context_appserver TYPE c LENGTH 1 VALUE 'D'.
    CONSTANTS attach_mode_wait TYPE c LENGTH 1 VALUE 'E'.
    CONSTANTS attach_mode_wait_2nd_try TYPE c LENGTH 1 VALUE 'F'.
    CONSTANTS affect_local_server TYPE c LENGTH 1 VALUE 'G'.
    CONSTANTS invocation_mode_explicit TYPE c LENGTH 1 VALUE 'G'.

    DATA inst_name TYPE shm_inst_name READ-ONLY.
    DATA client TYPE mandt READ-ONLY.
    DATA properties TYPE shm_properties READ-ONLY.

    METHODS get_root ABSTRACT
      RETURNING
        VALUE(root) TYPE REF TO object
      RAISING
        cx_shm_already_detached.

    METHODS detach
      RAISING
        cx_shm_wrong_handle
        cx_shm_already_detached.

    METHODS detach_commit
      RAISING
        cx_shm_wrong_handle
        cx_shm_already_detached
        cx_shm_secondary_commit
        cx_shm_event_execution_failed
        cx_shm_completion_error.

ENDCLASS.

CLASS cl_shm_area IMPLEMENTATION.

  METHOD detach_commit.
    RETURN.
  ENDMETHOD.

  METHOD detach.
    RETURN.
  ENDMETHOD.

ENDCLASS.