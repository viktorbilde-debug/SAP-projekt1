@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DatadefinitionW'
@AbapCatalog.extensibility: {
  extensible: true,
  allowNewDatasources: false,
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  },
  allowNewCompositions: true
}
define root view entity ZR_SPAC115_warehouse
 as select from zspac115_war
{
  key warehouse_id as WarehouseId,
  adress as Adress,
  city as City,
  postcode as Postcode,
  local_created_by as LocalCreatedBy,
  local_created_at as LocalCreatedAt,
  local_last_changed_by as LocalLastChangedBy,
  local_last_changed_at as LocalLastChangedAt,
  last_changed_at as LastChangedAt
}
