CLASS lhc_Ware1 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR Ware1 RESULT result.

ENDCLASS.

CLASS lhc_Ware1 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.


CLASS lsc_ZR_SPAC115_WAREHOUSE DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZR_SPAC115_WAREHOUSE IMPLEMENTATION.


  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
