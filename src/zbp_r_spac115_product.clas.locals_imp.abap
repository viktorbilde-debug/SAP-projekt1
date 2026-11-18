CLASS lhc_Product1 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR Product1 RESULT result.

ENDCLASS.

CLASS lhc_Product1 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZR_SPAC115_PRODUCT DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZR_SPAC115_PRODUCT IMPLEMENTATION.


  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
