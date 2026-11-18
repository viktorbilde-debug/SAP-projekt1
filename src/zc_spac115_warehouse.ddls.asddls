@EndUserText.label: 'Warehouse'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['WarehouseId']
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['Warehouse_R'],
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  }, allowNewCompositions: true  
}
define root view entity ZC_SPAC115_warehouse
provider contract transactional_query
  as projection on ZR_SPAC115_warehouse as Warehouse_R
{
@EndUserText.label: 'WarehouseId'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  key WarehouseId,
@EndUserText.label: 'Adress'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  Adress,
@EndUserText.label: 'City'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  City,
@EndUserText.label: 'Postcode'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  Postcode
}
