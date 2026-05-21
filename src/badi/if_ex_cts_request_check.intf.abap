INTERFACE if_ex_cts_request_check PUBLIC.
  METHODS check_before_creation.

  METHODS check_before_release
    IMPORTING
      request    TYPE trkorr OPTIONAL
      type       TYPE trfunction OPTIONAL
      owner      TYPE tr_as4user OPTIONAL
      objects    TYPE tr_objects OPTIONAL
      keys       TYPE tr_keys OPTIONAL
      keys_str   TYPE e071k_strtyp OPTIONAL
      dialog     TYPE trboolean OPTIONAL
      tarsystem  TYPE tr_target OPTIONAL
      adt        TYPE trboolean OPTIONAL
      simulation TYPE trboolean OPTIONAL
    CHANGING
      text       TYPE as4text OPTIONAL
      attributes TYPE trattributes OPTIONAL
    EXCEPTIONS
      cancel.

  METHODS check_before_changing_owner.

  METHODS check_before_add_objects.

  METHODS check_before_release_slin.
ENDINTERFACE.
