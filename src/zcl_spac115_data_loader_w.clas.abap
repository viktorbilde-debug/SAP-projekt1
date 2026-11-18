CLASS zcl_spac115_data_loader_w DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      fill_table
        RETURNING VALUE(r_output) TYPE string
        RAISING cx_sy_open_sql_db,
      cleanup
        RETURNING VALUE(r_output) TYPE STRING.

ENDCLASS.



CLASS ZCL_SPAC115_DATA_LOADER_W IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( cleanup(  ) ).

    TRY.
      out->write( fill_table(  ) ).
    CATCH cx_sy_open_sql_db INTO DATA(lx).
      out->write( |Couldn't write entries to table. Error: { lx->get_longtext(  ) }| ).
    ENDTRY.

  ENDMETHOD.


  METHOD fill_table.
*                                  ÆNDR TABELNAVNET
*                                  vvvvvvvvvvvvvvvv
    DATA: temp_table TYPE TABLE OF  zspac115_war.
*                                  ^^^^^^^^^^^^^^^^

    temp_table = VALUE #(
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*   Ændr data herunder, når du vil fylde data på andre tabeller
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
      ( warehouse_id = 1 adress = 'kylling1' city = 'Esbjerg'  postcode = 6700 )
      ( warehouse_id = 2 adress = 'gris2' city = 'København'  postcode = 1635 )
      ( warehouse_id = 3 adress = 'løve3' city = 'Hørsholm'  postcode = 2970 )

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*   Ændr data herover, når du vil fylde data på andre tabeller
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    ).

    TRY.
*            ÆNDR TABELNAVNET
*            vvvvvvvvvvvvvvvv
      INSERT  zspac115_war  FROM TABLE @( CORRESPONDING #( temp_table ) ).
*            ^^^^^^^^^^^^^^^^

    CATCH cx_sy_open_sql_db INTO DATA(lx).
      RAISE EXCEPTION lx.
    ENDTRY.

    r_output = |Inserted { sy-dbcnt } entries into table.|.

  ENDMETHOD.


  METHOD cleanup.

*               ÆNDR TABELNAVNET
*               vvvvvvvvvvvvvvvv
    DELETE FROM  zspac115_war .
*               ^^^^^^^^^^^^^^^^

    IF sy-subrc <> 0.
      ROLLBACK WORK.
      r_output = |Cleanup failed. Error: { sy-subrc }.|.
    ELSE.
      COMMIT WORK.
      r_output = |Successfully cleaned up { sy-dbcnt } entries.|.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
