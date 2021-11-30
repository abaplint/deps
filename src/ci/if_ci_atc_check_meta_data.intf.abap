INTERFACE if_ci_atc_check_meta_data PUBLIC.
  METHODS get_checked_object_types
    RETURNING VALUE(types) TYPE string.
  METHODS get_description
    RETURNING VALUE(description) TYPE string.
  METHODS get_finding_code_infos
    RETURNING VALUE(finding_code_infos) TYPE string.
  METHODS get_quickfix_code_infos.
  METHODS is_remote_enabled
    RETURNING VALUE(is_remote_enabled) TYPE abap_bool.
  METHODS uses_checksums
    RETURNING VALUE(uses_checksums) TYPE abap_bool.
ENDINTERFACE.