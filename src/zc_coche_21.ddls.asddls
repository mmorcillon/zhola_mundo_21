@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_COCHE_21
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_COCHE_21
{
  key IdCoche,
  key IdCliente,
  Marca,
  Modelo,
  FechaMatri,
  Bastidor,
  UserCreate,
  AbpLocinstLastchangeTstmp,
  AbpLocinstLastchangeUtcl,
  UserLastChange,
  AbpLastchangeTstmpl,
  AbpLastchangeUtcl
  
}
