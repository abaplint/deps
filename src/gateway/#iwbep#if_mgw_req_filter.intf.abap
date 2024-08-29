INTERFACE /iwbep/if_mgw_req_filter PUBLIC.

   TYPES:
        BEGIN OF ty_s_cod_select_option,
          sign   TYPE ddsign,
          option TYPE ddoption,
          low    TYPE string,
          high   TYPE string,
        END OF ty_s_cod_select_option.

      TYPES:
        BEGIN OF ty_s_mgw_select_option,
          property       TYPE string,
          select_options TYPE STANDARD TABLE OF ty_s_cod_select_option WITH EMPTY KEY,
        END OF ty_s_mgw_select_option.

      TYPES ty_t_mgw_select_option TYPE STANDARD TABLE OF ty_s_mgw_select_option WITH EMPTY KEY.

      METHODS get_filter_select_options
        RETURNING
          VALUE(rt_filter_select_options) TYPE ty_t_mgw_select_option.

ENDINTERFACE.