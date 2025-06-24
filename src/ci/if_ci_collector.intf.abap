INTERFACE if_ci_collector PUBLIC.

  METHODS:
    put_attributes
      IMPORTING
        p_attributes TYPE string,
    get_attributes
      RETURNING
        VALUE(p_attributes) TYPE string,
    collect
      IMPORTING
        p_objslist             TYPE string
        p_confine_objtypes     TYPE string
        p_confine_objnames     TYPE string
        p_confine_devclasses   TYPE string
        p_confine_responsibles TYPE string
        p_srcid                TYPE string,
    query_attributes
      IMPORTING
        p_display TYPE string.

ENDINTERFACE.
