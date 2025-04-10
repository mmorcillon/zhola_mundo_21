CLASS zcl_coche_21 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_coche_21 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "Declarar las variables
*    DATA: lt_zcoche_21 TYPE TABLE OF zcoche_21,
*          ls_zcoche_21 TYPE zcoche_21.
*
*    ls_zcoche_21-id_coche = 1.
*    ls_zcoche_21-nombre = 'FORD' .
*    ls_zcoche_21-modelo = 'FOCUS'.
*
*    INSERT zcoche_21 FROM @ls_zcoche_21. "Insertar un registro en base de datos
*
*    IF sy-subrc EQ 0.
*        out->write( 'Se ha insertado un registro en la tabla zcoche_21' ).
*    ENDIF.

*    DATA: ls_conce TYPE zconce_21.
*
*    ls_conce-id_conce = 1.
*    ls_conce-nombre_conce = 'Aut. San Jose'.
*    ls_conce-localidad = 'Madrid'.
*    ls_conce-provincia = 'Madrid'.
*    ls_conce-cod_postal = 12312.
*    ls_conce-telefono = 1231231.
*    ls_conce-email = 'asdasda@asdas.es'.
*
*    INSERT zconce_21 FROM @ls_conce.
*
*
*    ls_conce-id_conce = 2.
*    ls_conce-nombre_conce = 'Aut. Mave'.
*    ls_conce-localidad = 'Merida'.
*    ls_conce-provincia = 'Badajoz'.
*    ls_conce-cod_postal = 12312.
*    ls_conce-telefono = 1231231.
*    ls_conce-email = 'asdasda@asdas.es'.
*
*    INSERT zconce_21 FROM @ls_conce.
*
*    ls_conce-id_conce = 3.
*    ls_conce-nombre_conce = 'Aut.Montijo'.
*    ls_conce-localidad = 'Montijo'.
*    ls_conce-provincia = 'Badajoz'.
*    ls_conce-cod_postal = 12312.
*    ls_conce-telefono = 1231231.
*    ls_conce-email = 'asdasda@asdas.es'.
*
*    INSERT zconce_21 FROM @ls_conce.
*
*    ls_conce-id_conce = 4.
*    ls_conce-nombre_conce = 'Aut. Manuel'.
*    ls_conce-localidad = 'Caceres'.
*    ls_conce-provincia = 'Caceres'.
*    ls_conce-cod_postal = 12312.
*    ls_conce-telefono = 1231231.
*    ls_conce-email = 'asdasda@asdas.es'.
*
*    INSERT zconce_21 FROM @ls_conce.
*
*    ls_conce-id_conce = 5.
*    ls_conce-nombre_conce = 'Divermoto'.
*    ls_conce-localidad = 'Caceres'.
*    ls_conce-provincia = 'Caceres'.
*    ls_conce-cod_postal = 12312.
*    ls_conce-telefono = 1231231.
*    ls_conce-email = 'asdasda@asdas.es'.
*
*    INSERT zconce_21 FROM @ls_conce.

*    DATA: ls_cliente TYPE zcliente_21.
*
*
*    ls_cliente-id_cliente = 1.
*    ls_cliente-id_conc = 1.
*
*    ls_cliente-nombre_cliente = 'Manue' .
*    ls_cliente-apellido = 'Fitipaldi'.
*    ls_cliente-email_cliente = 'asdasdasda@asdasda.com'.
*    ls_cliente-fecha_alta = 20250408.
*    ls_cliente-subcripcion = 'X'.
*
*    INSERT zcliente_21 FROM @ls_cliente.
*
*
*
*    ls_cliente-id_cliente = 2.
*    ls_cliente-id_conc = 2.
*    ls_cliente-nombre_cliente = 'Miguel' .
*    ls_cliente-apellido = 'Verstapen'.
*    ls_cliente-email_cliente = 'asdasdasda@asdasda.com'.
*    ls_cliente-fecha_alta = 20250408.
*    ls_cliente-subcripcion = 'X'.
*
*    INSERT zcliente_21 FROM @ls_cliente.
*
*    ls_cliente-id_cliente = 3.
*    ls_cliente-id_conc = 3.
*    ls_cliente-nombre_cliente = 'Jose Manuel' .
*    ls_cliente-apellido = 'Sevilla'.
*    ls_cliente-email_cliente = 'asdasdasda@asdasda.com'.
*    ls_cliente-fecha_alta = 20250408.
*    ls_cliente-subcripcion = 'X'.
*    INSERT zcliente_21 FROM @ls_cliente.
*
*    ls_cliente-id_cliente = 3.
*    ls_cliente-id_conc = 3.
*    ls_cliente-nombre_cliente = 'Valentina' .
*    ls_cliente-apellido = 'Nuñez'.
*    ls_cliente-email_cliente = 'asdasdasda@asdasda.com'.
*    ls_cliente-fecha_alta = 20250408.
*    ls_cliente-subcripcion = 'X'.
*    INSERT zcliente_21 FROM @ls_cliente.

    DATA: ls_coche TYPE zcoche_21.


    ls_coche-id_coche   = 1.
    ls_coche-id_cliente = 1.
    ls_coche-marca         = 'Ford'.
    ls_coche-modelo         = 'Scort'.
    ls_coche-fecha_matri    = '19840312'.
    ls_coche-bastidor       = 'VBK123123'.
    INSERT zcoche_21 FROM @ls_coche.

    ls_coche-id_coche   = 2.
    ls_coche-id_cliente = 2.
    ls_coche-marca         = 'Ford'.
    ls_coche-modelo         = 'Mustang'.
    ls_coche-fecha_matri    = '19840312'.
    ls_coche-bastidor       = 'VBK123123'.
    INSERT zcoche_21 FROM @ls_coche.

    ls_coche-id_coche   = 3.
    ls_coche-id_cliente = 3.
    ls_coche-marca         = 'Ford'.
    ls_coche-modelo         = 'Fiesta'.
    ls_coche-fecha_matri    = '19840312'.
    ls_coche-bastidor       = 'VBK123123'.
    INSERT zcoche_21 FROM @ls_coche.


  ENDMETHOD.
ENDCLASS.
