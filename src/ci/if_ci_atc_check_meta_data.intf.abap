INTERFACE if_ci_atc_check_meta_data PUBLIC.
  TYPES:
    BEGIN OF ENUM ty_attribute_kind STRUCTURE attribute_kinds,
      boolean,
      elementary,
      table,
      range,
    END OF ENUM ty_attribute_kind STRUCTURE attribute_kinds.
  TYPES:
    BEGIN OF ty_attribute,
      name TYPE string,
      kind TYPE ty_attribute_kind,
      value TYPE REF TO data,
    END OF ty_attribute.
  TYPES ty_attributes TYPE HASHED TABLE OF ty_attribute WITH UNIQUE KEY name.
  TYPES:
    BEGIN OF ENUM ty_finding_category STRUCTURE finding_categories,
      standard,
      failure_for_object,
      partial_failure_for_system,
      complete_failure_for_system,
    END OF ENUM ty_finding_category STRUCTURE finding_categories.
  TYPES:
    BEGIN OF ty_finding_code_info,
      code TYPE if_ci_atc_check=>ty_finding_code,
      severity TYPE if_ci_atc_check=>ty_finding_severity,
      category TYPE ty_finding_category,
      text TYPE string,
      pseudo_comment TYPE string,
    END OF ty_finding_code_info.
  TYPES ty_finding_code_infos TYPE HASHED TABLE OF ty_finding_code_info WITH UNIQUE KEY code.
  TYPES:
    BEGIN OF ty_quickfix_code_info,
      code TYPE cl_ci_atc_quickfixes=>ty_quickfix_code,
      short_text TYPE string,
      long_text TYPE string,
    END OF ty_quickfix_code_info.
  TYPES ty_quickfix_code_infos TYPE HASHED TABLE OF ty_quickfix_code_info WITH UNIQUE KEY code.
  TYPES ty_object_types TYPE HASHED TABLE OF if_ci_atc_check=>ty_object-type WITH UNIQUE KEY table_line.
  TYPES ty_description TYPE string.
  METHODS get_attributes DEFAULT IGNORE
    RETURNING VALUE(attributes) TYPE ty_attributes.
  METHODS get_finding_code_infos
    RETURNING VALUE(finding_code_infos) TYPE ty_finding_code_infos.
  METHODS get_quickfix_code_infos
    RETURNING VALUE(quickfix_code_infos) TYPE ty_quickfix_code_infos.
  METHODS get_checked_object_types
    RETURNING VALUE(types) TYPE ty_object_types.
  METHODS get_description
    RETURNING VALUE(description) TYPE ty_description.
  METHODS uses_checksums
    RETURNING VALUE(uses_checksums) TYPE abap_bool.
  METHODS is_remote_enabled
    RETURNING VALUE(is_remote_enabled) type abap_bool.
ENDINTERFACE.
