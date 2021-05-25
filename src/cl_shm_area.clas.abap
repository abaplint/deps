CLASS cl_shm_area DEFINITION PUBLIC.

  PUBLIC SECTION.
    CONSTANTS affect_all_servers TYPE c LENGTH 1 VALUE 'A'.
    CONSTANTS default_instance TYPE c LENGTH 1 VALUE 'B'.
    CONSTANTS attach_mode_default TYPE c LENGTH 1 VALUE 'C'.
    CONSTANTS life_context_appserver TYPE c LENGTH 1 VALUE 'D'.
    CONSTANTS attach_mode_wait TYPE c LENGTH 1 VALUE 'E'.
    CONSTANTS attach_mode_wait_2nd_try TYPE c LENGTH 1 VALUE 'F'.
    CONSTANTS affect_local_server TYPE c LENGTH 1 VALUE 'G'.

ENDCLASS.

CLASS cl_shm_area IMPLEMENTATION.

ENDCLASS.