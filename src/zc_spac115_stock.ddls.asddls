@EndUserText.label: 'Products'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['ProductId','WarehouseId']
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['STOCK_R'],
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  }, allowNewCompositions: true  
}

define root view entity ZC_SPAC115_STOCK
provider contract transactional_query
 as projection on ZR_SPAC115_STOCK as STOCK_R

{
@EndUserText.label: 'Warehouse ID'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
//  @UI.hidden: true
  key WarehouseId,

@EndUserText.label: 'ProductID'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  key ProductId,
//  @UI.lineItem: [{ position: 10, label: 'City' }]
//  City,

 @EndUserText.label: 'Amount'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  Amount,
  LocalLastChangedAt
//  name,

  /* Associations */
//  _Product,
//  _Warehouse
}
