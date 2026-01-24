CLASS cl_os_ca_common DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_os_ca_persistency.
    INTERFACES if_os_ca_service.
    INTERFACES if_os_factory.

  PROTECTED SECTION.
    DATA current_object_iref TYPE typ_object_iref.
    DATA current_object_info TYPE typ_object_info.
    DATA current_object_index TYPE typ_index.

    METHODS register_class_agent
      IMPORTING
        i_class_name          TYPE objname
        i_class_agent_name    TYPE objname
        i_class_guid          TYPE sysuuid_c
        i_class_agent_guid    TYPE sysuuid_c
        i_agent               TYPE REF TO object
        i_storage_location    TYPE objname
        i_class_agent_version TYPE char8.

    METHODS os_load_and_validate_current
      IMPORTING
        i_index TYPE typ_index.

    METHODS os_pm_handle_create_on_exist
      IMPORTING
        i_transient TYPE os_boolean OPTIONAL.

    METHODS os_clear_current.

    METHODS os_pm_created_persistent.

ENDCLASS.

CLASS cl_os_ca_common IMPLEMENTATION.
  METHOD if_os_ca_persistency~get_persistent_by_key.
    RETURN.
  ENDMETHOD.

  METHOD if_os_ca_service~save.
    RETURN.
  ENDMETHOD.

  METHOD if_os_ca_service~save_in_update_task.
    RETURN.
  ENDMETHOD.

  METHOD if_os_factory~create_transient_by_key.
    RETURN.
  ENDMETHOD.

  METHOD register_class_agent.
    RETURN.
  ENDMETHOD.

  METHOD os_load_and_validate_current.
    RETURN.
  ENDMETHOD.

  METHOD os_pm_handle_create_on_exist.
    RETURN.
  ENDMETHOD.

  METHOD os_clear_current.
    RETURN.
  ENDMETHOD.

  METHOD os_pm_created_persistent.
    RETURN.
  ENDMETHOD.

ENDCLASS.