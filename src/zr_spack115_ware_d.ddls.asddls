@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'datafintion for draft'
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['Ware_D'],
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  }
}

define view entity ZR_SPACK115_ware_D as select from zspac115_war_d as Ware_D
{
  key warehouseid as WarehouseId,
  adress as Adress,
  city as City,
  postcode as Postcode,
  localcreatedby as Localcreatedby,
  localcreatedat as Localcreatedat,
  locallastchangedby as Locallastchangedby,
  locallastchangedat as Locallastchangedat,
  lastchangedat as Lastchangedat,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
}
