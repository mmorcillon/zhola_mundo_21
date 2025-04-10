@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition zconce_21'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity ZCDS_DD_ZCONCE_21
  as select from zconce_21
{
  key id_conce     as IdConce,
      nombre_conce as NombreConce,
      localidad    as Localidad,
      provincia    as Provincia,
      cod_postal   as CodPostal,
      telefono     as Telefono,
      email        as Email
     
}
