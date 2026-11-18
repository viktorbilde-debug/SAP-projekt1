CLASS lhc_Stock1 DEFINITION
 INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR Stock1 RESULT result.
    METHODS validateAmount
      FOR VALIDATE ON SAVE
      IMPORTING keys
      FOR Stock1~validateAmount.

ENDCLASS.

CLASS lhc_Stock1 IMPLEMENTATION.

  METHOD get_instance_authorizations.


   ENDMETHOD.

  METHOD validateAmount.
  DATA failed_record   LIKE LINE OF failed-Stock1.
  DATA reported_record LIKE LINE OF reported-Stock1.

  READ ENTITIES OF ZR_SPAC115_STOCK IN LOCAL MODE
  ENTITY Stock1
    FIELDS ( Amount )
    WITH CORRESPONDING #(  keys )
    RESULT DATA(amounts).

   LOOP AT amounts INTO DATA(amount).
      IF amount-Amount < 0.

      failed_record-%tky = amount-%tky.
      APPEND failed_record TO failed-Stock1.

      reported_record-%tky = amount-%tky.
      reported_record-%msg = new_message(
                      id       = '/LRN/S4D400'
                      number   = '101'
                      severity = ms-error ).
      APPEND reported_record TO reported-Stock1.
      ENDIF.
    ENDLOOP.
*  METHOD CheckSemanticKey.
*    Data amountd TYPE i.

*    READ ENTITIES OF ZR_SPAC115_STOCK IN LOCAL MODE
*         ENTITY Stock1
*         FIELDS ( Amount )
*         WITH CORRESPONDING #(  keys )
*         RESULT DATA(Amounts).

*    LOOP AT Amounts INTO amountd.
*      IF amount < 0.

*  ENDMETHOD.


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






