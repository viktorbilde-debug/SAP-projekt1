@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'datadefition draft prod'
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['PROD_D'],
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  }
}
define view entity ZR_SPACK115_prod_D as select from zspac115_prod_d as PROD_D
{
  key  productid as ProductId,
  name as name,
  proddis as Proddis,
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
