CLASS lhc_Stock1 DEFINITION
 INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR Stock1 RESULT result.
    METHODS CheckSemanticKey
      FOR VALIDATE ON SAVE
      IMPORTING keys
      FOR Stock1~CheckSemanticKey.

ENDCLASS.

CLASS lhc_Stock1 IMPLEMENTATION.

  METHOD get_instance_authorizations.


   ENDMETHOD.

  METHOD CheckSemanticKey.

    READ ENTITIES OF ZR_SPAC115_STOCK IN LOCAL MODE
         ENTITY Stock1
         FIELDS ( WarehouseId ProductId )
         WITH CORRESPONDING #(  keys )
         RESULT DATA(products).
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZR_SPAC115_STOCK DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS cleanup_finalize REDEFINITION.
ENDCLASS.

CLASS lsc_ZR_SPAC115_STOCK IMPLEMENTATION.


  METHOD cleanup_finalize.
  ENDMETHOD.


ENDCLASS.






