@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DatadefinitionP'
@AbapCatalog.extensibility: {
  extensible: true,
  allowNewDatasources: false,
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  },
  allowNewCompositions: true
}

define root view entity ZR_SPAC115_product
 as select from zspac115_product as product

//  association [1..1] to zspac115_product as _Product            on $projection.ProductId = _Product.product_id
//  association [1..1] to zspac115_war as _Warehouse   on $projection.WarehouseId = _Warehouse.warehouse_id
  
{
// @ObjectModel.text.element: ['City']
  key product.product_id as ProductId,
  product.product_name as name,
  product.product_descri as ProdDis,
  local_created_by as LocalCreatedBy,
  local_created_at as LocalCreatedAt,
  local_last_changed_by as LocalLastChangedBy,
  local_last_changed_at as LocalLastChangedAt,
  last_changed_at as    LastChangedAt
}
