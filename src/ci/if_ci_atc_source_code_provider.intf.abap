INTERFACE if_ci_atc_source_code_provider
  PUBLIC.

  TYPES ty_object_type TYPE c LENGTH 4.
  TYPES:
    BEGIN OF ENUM ty_compilation_unit_kind STRUCTURE compilation_unit_kinds BASE TYPE ty_object_type,
      invalid VALUE IS INITIAL,
      class VALUE 'CLAS',
      report VALUE 'PROG',
      function_group VALUE 'FUGR',
      type_pool VALUE 'TYPE',
      interface VALUE 'INTF',
    END OF ENUM ty_compilation_unit_kind STRUCTURE compilation_unit_kinds.
  TYPES ty_compilation_unit_name TYPE c LENGTH 40.
  TYPES:
    BEGIN OF ty_compilation_unit,
      kind TYPE ty_compilation_unit_kind,
      name TYPE ty_compilation_unit_name,
    END OF ty_compilation_unit.

  TYPES:
    BEGIN OF ENUM ty_procedure_kind STRUCTURE procedure_kinds BASE TYPE ty_object_type,
      invalid VALUE IS INITIAL,
      method VALUE 'METH',
      class_definition VALUE 'DECL',
      form_routine VALUE 'FORM',
      function VALUE 'FUNC',
      at_user_command VALUE 'ATUC',
      at_line_selection VALUE 'LISE',
      at_pf_status VALUE 'ATPF',
      at_selection_screen VALUE 'ATSS',
      module_in VALUE 'MODI',
      module_out VALUE 'MODO',
      start_of_selection VALUE 'SSEL',
      end_of_selection VALUE 'ESEL',
      top_of_page VALUE 'TOPA',
      top_of_page_during VALUE 'TOPS',
      end_of_page VALUE 'ENPA',
      load_of_program VALUE 'LDPR',
      initialization VALUE 'INIT',
      get VALUE 'GET ',
      get_late VALUE 'GETL',
    END OF ENUM ty_procedure_kind STRUCTURE procedure_kinds.
  TYPES ty_procedure_name TYPE string.
  TYPES:
    BEGIN OF ty_procedure_id,
      kind TYPE ty_procedure_kind,
      name TYPE ty_procedure_name,
      main_unit TYPE ty_compilation_unit,
    END OF ty_procedure_id.
  TYPES ty_keyword TYPE string.
  TYPES ty_lexeme TYPE string.
  TYPES:
    BEGIN OF ty_source_position,
      line TYPE i,
      column TYPE int1,
    END OF ty_source_position.
  TYPES ty_full_name TYPE string.
  TYPES ty_compiler_reference_tag TYPE c LENGTH 2.
  TYPES:
    BEGIN OF ENUM ty_reference_kind STRUCTURE compiler_reference_kinds BASE TYPE ty_compiler_reference_tag,
      invalid VALUE IS INITIAL,
      association VALUE 'AC',
      authority_object VALUE 'AO',
      authorization_context VALUE 'AT',
      common_part VALUE 'CP',
      data VALUE 'DA',
      event VALUE 'EV',
      form VALUE 'FO',
      function VALUE 'FU',
      function_pool VALUE 'FP',
      database_function VALUE 'DF',
      include VALUE 'IC',
      macro VALUE 'MA',
      macro_trmac VALUE 'RM',
      matchcode VALUE 'MC',
      message VALUE 'MG',
      message_id VALUE 'MI',
      message_number VALUE 'MN',
      message_type VALUE 'MT',
      method VALUE 'ME',
      program VALUE 'PR',
      reference VALUE 'RE',
      shared_data VALUE 'SD',
      shared_type VALUE 'ST',
      table_key VALUE 'TK',
      text_element VALUE 'TE',
      transaction VALUE 'TA',
      transformation VALUE 'TR',
      test_seam VALUE 'TS',
      type VALUE 'TY',
      type_of VALUE 'TO',
      type_of_type VALUE 'TT',
      type_pool VALUE 'TP',
      value VALUE 'VA',
      schema VALUE 'SH',


      bdl_group VALUE 'EG',
      bdl_operation VALUE 'OP',
      bdl_action VALUE 'EA',
      bdl_determination_validation value 'DV',
      bdl_event value 'EE',
      bdl_extension value 'BX',
      entity_parameter VALUE 'EP',

      at_line_selection VALUE 'AL',
      at_pf VALUE 'AF',
      at_selection_screen VALUE 'AS',
      at_selection_screen_block VALUE 'AB',
      at_selection_screen_exit VALUE 'AX',
      at_selection_screen_help VALUE 'AH',
      at_selection_screen_on VALUE 'AN',
      at_selection_screen_on_end VALUE 'AE',
      at_selection_screen_output VALUE 'AP',
      at_selection_screen_radio VALUE 'AR',
      at_selection_screen_value VALUE 'AV',
      at_user_command VALUE 'AU',
      end_of_editing VALUE 'E0',
      end_of_selection VALUE 'E1',
      get VALUE 'GE',
      get_late VALUE 'GL',
      global_interface VALUE 'GI',
      group VALUE 'GR',
      infotype VALUE 'IT',
      initalization VALUE 'E2',
      interface VALUE 'IN',
      intf_pool VALUE 'IP',
      line_of VALUE 'LO',
      load_of_program VALUE 'E3',
      locally_defined_type VALUE 'LT',
      locally_defined_association VALUE 'LA',
      module_in VALUE 'MX',
      module_out VALUE 'MO',
      pf_status VALUE 'PF',
      predefined_data VALUE 'PD',
      predefined_type VALUE 'PT',
      screen VALUE 'SC',
      section VALUE 'SE',
      start_of_editing VALUE 'E4',
      start_of_selection VALUE 'E5',
      system_type VALUE 'YT',
      title VALUE 'TI',
      top_of_page VALUE 'E6',
      top_of_page_line_selection VALUE 'E7',
      dynpro_fields VALUE 'D1',
      dynpro_flow VALUE 'D2',
      domain VALUE 'DO',
      feature_toggle VALUE 'FT',

      block VALUE 'BL',
      break_point VALUE 'BR',
      component VALUE 'CO',
      control VALUE 'CT',
      custom_function VALUE 'CF',
      ddls VALUE 'DD',
      dialog VALUE 'DI',
      enhancement_exit VALUE 'EX',
      enhancement_implementation VALUE 'EI',
      enhancement_spot VALUE 'ES',
      enhancement VALUE 'EN',
      service_binding VALUE 'SB',
      set_get_id VALUE 'SG',

    END OF ENUM ty_reference_kind STRUCTURE compiler_reference_kinds.
  TYPES ty_compiler_usage_tag TYPE c LENGTH 1.
  TYPES:
    BEGIN OF ENUM ty_usage_grade STRUCTURE usage_grades BASE TYPE ty_compiler_usage_tag,
      invalid VALUE IS INITIAL,
      definition VALUE '0',
      direct VALUE '1',
      component VALUE '2',
      indirect VALUE '3',
    END OF ENUM ty_usage_grade STRUCTURE usage_grades.
  TYPES:
    BEGIN OF ENUM ty_usage_mode STRUCTURE usage_modes BASE TYPE ty_compiler_usage_tag,
      invalid VALUE IS INITIAL,
      enhancement_point VALUE 'P',
      enhancement_section VALUE 'S',
      name VALUE '0',
      type VALUE '1',
      definition VALUE '2',
      definition_with_write VALUE '3',
      definition_with_assign VALUE '4',
      read VALUE '5',
      write VALUE '6',
      write_partial VALUE 'D',
      read_and_write VALUE '7',
      read_reference VALUE '8',
      write_reference VALUE '9',
      read_and_write_reference VALUE 'A',
      any_access_reference VALUE 'B',
      assign VALUE 'C',
      read_database VALUE 'E',
      write_database VALUE 'F',
      redefinition VALUE 'R',
    END OF ENUM ty_usage_mode STRUCTURE usage_modes.
  TYPES:
    BEGIN OF ty_compiler_reference,
      full_name TYPE ty_full_name,
      kind TYPE ty_reference_kind,
      usage_grade TYPE ty_usage_grade,
      usage_mode TYPE ty_usage_mode,
    END OF ty_compiler_reference.
  TYPES ty_compiler_references TYPE STANDARD TABLE OF ty_compiler_reference WITH EMPTY KEY.
  TYPES:
    BEGIN OF ty_token,
      lexeme TYPE ty_lexeme,
      position TYPE ty_source_position,
      references TYPE ty_compiler_references,
    END OF ty_token.
  TYPES ty_tokens TYPE STANDARD TABLE OF ty_token WITH EMPTY KEY.
  TYPES ty_pseudo_comments TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
  TYPES ty_include TYPE c LENGTH 40.
  TYPES:
    BEGIN OF ty_statement,
      keyword TYPE ty_keyword,
      tokens TYPE ty_tokens,
      pseudo_comments TYPE ty_pseudo_comments,
      include TYPE ty_include,
      position TYPE ty_source_position,
      is_in_scope TYPE abap_bool,
    END OF ty_statement.
  TYPES ty_statements TYPE STANDARD TABLE OF ty_statement WITH EMPTY KEY
      WITH NON-UNIQUE SORTED KEY keyword COMPONENTS keyword.
  TYPES:
    BEGIN OF ty_procedure,
      id TYPE ty_procedure_id,
      statements TYPE ty_statements,
    END OF ty_procedure.
  TYPES ty_procedures TYPE STANDARD TABLE OF ty_procedure WITH EMPTY KEY
      WITH UNIQUE HASHED KEY id COMPONENTS id.
  TYPES ty_token_index TYPE i.

  METHODS get_procedures
    IMPORTING compilation_unit TYPE ty_compilation_unit
    RETURNING VALUE(procedures) TYPE REF TO ty_procedures
    RAISING cx_ci_atc_invalid_comp_unit.

  METHODS get_called_procedure
    IMPORTING compilation_unit TYPE ty_compilation_unit
              calling_token TYPE ty_token
    RETURNING VALUE(procedure) TYPE ty_procedure
    RAISING cx_ci_atc_token_no_call.

  METHODS object_to_comp_unit
    IMPORTING object TYPE if_ci_atc_check=>ty_object
    RETURNING VALUE(compilation_unit) TYPE ty_compilation_unit.

  METHODS get_statement_location
    IMPORTING statement TYPE ty_statement
    RETURNING VALUE(location) TYPE if_ci_atc_check=>ty_location.

  METHODS get_statement_checksum
    IMPORTING statement TYPE ty_statement
    RETURNING VALUE(checksum) TYPE if_ci_atc_check=>ty_checksum.

ENDINTERFACE.
