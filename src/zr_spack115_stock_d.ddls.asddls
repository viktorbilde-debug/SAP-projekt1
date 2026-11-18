@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'datafintion for draft'
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['STOCK_D'],
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  }
}

define view entity ZR_SPACK115_STOCK_D as select from zspac115_stock_d as STOCK_D
{
  key productid as ProductId,
  key warehouseid as WarehouseID,
  amount as Amount,
  localcreatedby                as Localcreatedby,
  localcreatedat                as Localcreatedat,
  locallastchangedby            as Locallastchangedby,
  locallastchangedat            as Locallastchangedat,
  lastchangedat                 as Lastchangedat,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
}

