@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datadefinition'
@AbapCatalog.extensibility: {
  extensible: true,
  allowNewDatasources: false,
  quota: {
    maximumFields: 500,
    maximumBytes: 50000
  },
  allowNewCompositions: true
}

define root view entity ZR_SPAC115_STOCK
 as select from zspac115_stock as stock

//  association [1..1] to zspac115_product as _Product            on $projection.ProductId = _Product.product_id
//  association [1..1] to zspac115_war as _Warehouse   on $projection.WarehouseId = _Warehouse.warehouse_id
  
{
// @ObjectModel.text.element: ['City']
  key stock.warehouse_id as WarehouseId,
  key stock.product_id as ProductId,
//  _Warehouse.city as City,
//  _Product.product_name as name,
  stock.amount as Amount,
  local_created_by as LocalCreatedBy,
  local_created_at as LocalCreatedAt,
  local_last_changed_by as LocalLastChangedBy,
  local_last_changed_at as LocalLastChangedAt,
  last_changed_at as    LastChangedAt
//  _Product,
//  _Warehouse
}
