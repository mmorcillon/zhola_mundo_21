CLASS lhc_ZCDS_DD_ZCONCE_21 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcds_dd_zconce_21 RESULT result.
    METHODS sendemail FOR MODIFY
      IMPORTING keys FOR ACTION zcds_dd_zconce_21~sendemail RESULT result.
    METHODS callapp FOR MODIFY
      IMPORTING keys FOR ACTION zcds_dd_zconce_21~callapp RESULT result.
   ENDCLASS.

CLASS lhc_ZCDS_DD_ZCONCE_21 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.
  METHOD sendemail.
  TRY.
        DATA(lo_mail) = cl_bcs_mail_message=>create_instance( ).

        lo_mail->set_sender( 'miguelmorcillo22@gmail.com' ).
        lo_mail->add_recipient( 'miguelmorcillo22@gmail.com' ).

        lo_mail->set_subject( 'Trial EMail' ).

        lo_mail->set_main( cl_bcs_mail_textpart=>create_instance(
            iv_content      = '<h1>Hello</h1><p>Hello world send from RAP!</p>'
            iv_content_type = 'text/html' ) ).

        lo_mail->send( IMPORTING et_status = DATA(lt_status) ).

*        out->write( lt_status ).

      CATCH cx_bcs_mail INTO DATA(lo_err).
*        out->write( lo_err->get_longtext( ) ).
    ENDTRY.
  ENDMETHOD.

  METHOD CallApp.
*  DATA: lv_string TYPE string.
**  lv_string = .
*  DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( i_destination = '/sap/opu/odata4/sap/zui_coche_21_o4/srvd/sap/zui_coche_21_o4/0001/' ).
*
*lo_client->request->set_method( if_web_http_request=>co_request_method_get ).
*lo_client->execute( ).
*
*DATA(response) = lo_client->response->get_text( ).

  ENDMETHOD.

ENDCLASS.
