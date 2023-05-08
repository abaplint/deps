CLASS cl_salv_controller_model DEFINITION
  public
  inheriting from CL_SALV_CONTROLLER
  abstract
  create public .

  PUBLIC SECTION.
    interfaces IF_SALV_CONTROLLER_MODEL .
    aliases R_ADAPTER
      for IF_SALV_CONTROLLER_MODEL~R_ADAPTER .
ENDCLASS.

CLASS cl_salv_controller_model IMPLEMENTATION.

ENDCLASS.
