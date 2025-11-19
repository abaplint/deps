INTERFACE if_ex_cts_request_check PUBLIC.
  TYPES ty_request TYPE c LENGTH 20.
  TYPES ty_function TYPE c LENGTH 1.
  METHODS check_before_creation.
  METHODS check_before_release
    IMPORTING request TYPE ty_request
              type    TYPE ty_function.
  METHODS check_before_changing_owner.
  METHODS check_before_add_objects.
  METHODS check_before_release_slin.
ENDINTERFACE.
