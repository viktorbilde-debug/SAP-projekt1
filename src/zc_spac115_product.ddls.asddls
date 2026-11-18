@EndUserText.label: 'Products'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['ProductId']
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['Product_R'],
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  }, allowNewCompositions: true  
}

define root view entity ZC_SPAC115_product
provider contract transactional_query
 as projection on ZR_SPAC115_product as Product_R
{
@EndUserText.label: 'ProductID'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  key ProductId,
@EndUserText.label: 'name'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  name,
@EndUserText.label: 'description'
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
  ProdDis
}
