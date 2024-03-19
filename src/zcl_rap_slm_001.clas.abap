CLASS zcl_rap_slm_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_slm_001 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

" Step 1 - Read
*    READ ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel
*    from value #( (  TravelUUID = 'CBD118809ECC33DA1800DCDE842418EA' ) )
*    RESULT data(travels).


" Step 2 - Read
*    READ ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel
*    FIELDS ( TravelID AgencyID CustomerID )
*    WITH value #( (  TravelUUID = 'CBD118809ECC33DA1800DCDE842418EA' ) )
*    RESULT data(travels).


" Step 3 - Read
*    READ ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel
*    ALL FIELDS WITH VALUE #( (  TravelUUID = 'CBD118809ECC33DA1800DCDE842418EA' ) )
*    RESULT data(travels).


" Step 4 - Read
*    READ ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel BY \_Booking
*    ALL FIELDS WITH VALUE #( (  TravelUUID = 'CBD118809ECC33DA1800DCDE842418EA' ) )
*    RESULT data(bookings).


" Step 5 - Read - Unsuccessful
*    READ ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel
*    ALL FIELDS WITH VALUE #( (  TravelUUID = '11111111111111111111111111111' ) )
*    RESULT data(travels)
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).
*    out->write( reported ).


" Step 6 - Modify Update
*     MODIFY ENTITIES OF zi_rap_slm_cds01
*     ENTITY Travel
*     UPDATE
*     SET FIELDS WITH VALUE
*     #( ( TravelUUID = 'CBD118809ECC33DA1800DCDE842418EA'
*          Description = 'Selim BAYRAKTAR' ) )
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*     COMMIT ENTITIES
*     RESPONSE OF zi_rap_slm_cds01
*     FAILED DATA(failed_commit)
*     REPORTED DATA(reported_commit).


" Step 7 - Modify Create
*    MODIFY ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel
*    CREATE
*    SET FIELDS WITH VALUE
*    #( (  %cid = 'MyContentID_1'
*          AgencyID = '70016'
*          CustomerID = '697'
*          BeginDate = cl_abap_context_info=>get_system_date( )
*          EndDate = cl_abap_context_info=>get_system_date( ) + 10
*          Description = 'Updated Selim BAYRAKTAR 2'  ) )
*          MAPPED DATA(mapped)
*          FAILED DATA(failed)
*          REPORTED DATA(reported).
*
*          out->write( mapped-travel ).
*
*     COMMIT ENTITIES
*     RESPONSE OF zi_rap_slm_cds01
*     FAILED DATA(failed_commit)
*     REPORTED DATA(reported_commit).
*
*     out->write( 'Create done' ).


*    MODIFY ENTITIES OF zi_rap_slm_cds01
*    ENTITY Travel
*    DELETE FROM VALUE #( ( TravelUUID = '161164A071981EDEB7DC77D14D301147' ) )
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*     COMMIT ENTITIES
*     RESPONSE OF zi_rap_slm_cds01
*     FAILED DATA(failed_commit)
*     REPORTED DATA(reported_commit).
*
*     out->write( 'Delete done' ).

  ENDMETHOD.

ENDCLASS.
