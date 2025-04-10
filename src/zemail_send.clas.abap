CLASS zemail_send DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   INTERFACES if_oo_adt_classrun .
    INTERFACES if_oo_adt_classrun_out .
    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zemail_send IMPLEMENTATION.

 METHOD if_oo_adt_classrun_out~get.
  ENDMETHOD.


  METHOD if_oo_adt_classrun_out~write.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

  TRY.
        DATA(lo_mail) = cl_bcs_mail_message=>create_instance( ).

        lo_mail->set_sender( 'miguelmorcillo22@gmail.com' ).
        lo_mail->add_recipient( 'miguelmorcillo22@gmail.com' ).

        lo_mail->set_subject( 'Trial EMail' ).

        lo_mail->set_main( cl_bcs_mail_textpart=>create_instance(
            iv_content      = '<h1>Hello</h1><p>Hello world send from RAP!</p>'
            iv_content_type = 'text/html' ) ).

        lo_mail->send( IMPORTING et_status = DATA(lt_status) ).

        out->write( lt_status ).

      CATCH cx_bcs_mail INTO DATA(lo_err).
        out->write( lo_err->get_longtext( ) ).
    ENDTRY.
  ENDMETHOD.


  METHOD if_rap_query_provider~select.



  ENDMETHOD.
ENDCLASS.
