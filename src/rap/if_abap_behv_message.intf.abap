INTERFACE if_abap_behv_message PUBLIC.

  INTERFACES if_message.
  INTERFACES if_t100_dyn_msg.
  INTERFACES if_t100_message.

  TYPES t_char01 TYPE c LENGTH 1.
  TYPES t_severity TYPE t_char01.

  CONSTANTS:
    BEGIN OF severity,
      none        TYPE t_severity VALUE '',
      error       TYPE t_severity VALUE 'E',
      warning     TYPE t_severity VALUE 'W',
      information TYPE t_severity VALUE 'I',
      success     TYPE t_severity VALUE 'S',
    END OF severity.

  DATA m_severity TYPE t_severity.

ENDINTERFACE.
