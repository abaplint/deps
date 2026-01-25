CLASS cl_os_ca_common DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_os_ca_persistency.
    INTERFACES if_os_ca_service.
    INTERFACES if_os_factory.

  PROTECTED SECTION.
    CONSTANTS dmode_direct TYPE os_dmode VALUE oscon_dmode_direct.
    CONSTANTS id_status_complete TYPE typ_id_status VALUE 3.
    CONSTANTS id_status_none TYPE typ_id_status VALUE 0.

    DATA current_object_iref TYPE typ_object_iref.
    DATA current_object_info TYPE typ_object_info.
    DATA current_object_index TYPE typ_index.
    DATA internal_transaction_stack TYPE typ_index_tab.
    DATA internal_current_transaction TYPE typ_index.
    DATA object_info TYPE typ_object_info_tab.
    DATA persistency_manager TYPE REF TO if_os_persistency_manager.
    DATA class_info TYPE typ_class_info.
    DATA internal_undo_info TYPE typ_internal_undo_info_stack.
    DATA internal_next_undo_info TYPE typ_index VALUE 1.

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

    METHODS os_pm_created_transient.

    METHODS delete_special_object_info.

    METHODS os_internal_undo.

    METHODS os_pm_loaded_persistent.

    METHODS load_special_object_info.

    METHODS map_invalidate
      IMPORTING
        i_object_iref_tab TYPE typ_object_tab.

    METHODS os_pm_delete_persistent.

    METHODS os_get_internal_oid_by_ref
      IMPORTING
        i_object      TYPE typ_object_iref
      RETURNING
        VALUE(result) TYPE typ_internal_oid.

    METHODS os_create_new_entry_for_repr
      IMPORTING
        i_object       TYPE typ_object_iref
        i_internal_oid TYPE typ_internal_oid.

    METHODS os_pm_deleted_persistent.

    METHODS pm_load
      RAISING
        cx_os_object_not_found.

    METHODS save_special_object_info.

ENDCLASS.

CLASS cl_os_ca_common IMPLEMENTATION.

  METHOD save_special_object_info.
    RETURN.
  ENDMETHOD.

  METHOD pm_load.
    RETURN.
  ENDMETHOD.

  METHOD os_get_internal_oid_by_ref.
    RETURN.
  ENDMETHOD.

  METHOD os_create_new_entry_for_repr.
    RETURN.
  ENDMETHOD.

  METHOD os_pm_deleted_persistent.
    RETURN.
  ENDMETHOD.

  METHOD load_special_object_info.
    RETURN.
  ENDMETHOD.

  METHOD map_invalidate.
    RETURN.
  ENDMETHOD.

  METHOD os_pm_delete_persistent.
    RETURN.
  ENDMETHOD.

  METHOD os_pm_created_transient.
    RETURN.
  ENDMETHOD.

  METHOD delete_special_object_info.
    RETURN.
  ENDMETHOD.

  METHOD os_internal_undo.
    RETURN.
  ENDMETHOD.

  METHOD os_pm_loaded_persistent.
    RETURN.
  ENDMETHOD.

  METHOD if_os_factory~create_persistent_by_key.
    RETURN.
  ENDMETHOD.

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