@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Concesionarios por Provincia'

@Metadata.allowExtensions: true
define view entity ZCDS_CHART_ZCONCE
  as select from zconce_21
{
  key provincia as Provincia,

  @Aggregation.default: #COUNT_DISTINCT
  count( distinct id_conce ) as TotalConcesionarios
}
group by provincia
