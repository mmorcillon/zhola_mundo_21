@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista entre coche y cliente'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Metadata.allowExtensions: true
define view entity ZCDS_DD_VISCOCH_CLIEN_21
  as select from zcliente_21 as clien
    inner join   zcoche_21   as coch on coch.id_cliente = clien.id_cliente
{

  key clien.id_cliente     as IdCliente,
  key coch.id_coche        as IdCoche,
      clien.nombre_cliente as NombreCliente,
      coch.marca           as Marca,
      coch.modelo          as Modelo,
      coch.bastidor        as Bastidor

}
