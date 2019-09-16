FBA_INVENTORY:
------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_fbainventory_fact`(
  `sellersku` string,
  `fnsku` string,
  `asin` string,
  `condition` string,
  `totalsupplyquantity` int,
  `instocksupplyquantity` int,
  `earliestavailability` string,
  `quantity` int,
  `supplytype` string,
  `earliestavailabletopick` timestamp,
  `latestavailabletopick` timestamp,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/FBAInventory_fact/_fact'
----------------------------------------
Excess_Inventory
------------------------
CREATE EXTERNAL TABLE `amzus_rep_exc_inventory`(
  `date_1` string,
  `msku` string,
  `fnsku` string,
  `asin` string,
  `product_name` string,
  `condition` string,
  `fulfilled_by` string,
  `total_quantity_sellable` string,
  `estimated_excess` string,
  `days_of_supply` string,
  `excess_threshold` string,
  `units_sold_last_7_days` string,
  `units_sold_last_30_days` string,
  `units_sold_last_60_days` string,
  `units_sold_last_90_days` string,
  `alert` string,
  `your_price` string,
  `lowest_price_includes_shipping` string,
  `buybox_price` string,
  `recommended_action` string,
  `healthy_inventory_level` string,
  `recommended_sales_price` string,
  `recommended_sale_duration_days` string,
  `estimated_total_storage_cost` string,
  `recommended_removal_quantity` string,
  `estimated_cost_savings_of_removal` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone'
---------------------------------------------------------------------
Inventory_Health:
---------------------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_fba_fulfill_inventory`(
  `snapshot_date` string,
  `sku` string,
  `fnsku` string,
  `asin` string,
  `product_name` string,
  `condition` string,
  `sales_rank` string,
  `product_group` string,
  `total_quantity` string,
  `sellable_quantity` string,
  `unsellable_quantity` string,
  `inv_age_0_to_90_days` string,
  `inv_age_91_to_180_days` string,
  `inv_age_181_to_270_days` string,
  `inv_age_271_to_365_days` string,
  `inv_age_365_plus_days` string,
  `units_shipped_last_24_hrs` string,
  `units_shipped_last_7_days` string,
  `units_shipped_last_30_days` string,
  `units_shipped_last_90_days` string,
  `units_shipped_last_180_days` string,
  `units_shipped_last_365_days` string,
  `weeks_of_cover_t7` string,
  `weeks_of_cover_t30` string,
  `weeks_of_cover_t90` string,
  `weeks_of_cover_t180` string,
  `weeks_of_cover_t365` string,
  `num_afn_new_sellers` string,
  `num_afn_used_sellers` string,
  `currency` string,
  `your_price` string,
  `sales_price` string,
  `lowest_afn_new_price` string,
  `lowest_afn_used_price` string,
  `lowest_mfn_new_price` string,
  `lowest_mfn_used_price` string,
  `qty_to_be_charged_ltsf_12_mo` string,
  `qty_in_long_term_storage_program` string,
  `qty_with_removals_in_progress` string,
  `projected_ltsf_12_mo` string,
  `per_unit_volume` string,
  `is_hazmat` string,
  `in_bound_quantity` string,
  `asin_limit` string,
  `inbound_recommend_quantity` string,
  `qty_to_be_charged_ltsf_6_mo` string,
  `projected_ltsf_6_mo` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/AzFBAFulfillmentInventory/test/20190521'
  
----------------------------------------------------
Open_listing:
---------------------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_inv_openlistings`(
  `sku` string,
  `asin` string,
  `price` string,
  `quantity` string,
  `business_price` string,
  `quantity_price_type` string,
  `quantity_lower_bound_1` string,
  `quantity_price_1` string,
  `quantity_lower_bound_2` string,
  `quantity_price_2` string,
  `quantity_lower_bound_3` string,
  `quantity_price_3` string,
  `quantity_lower_bound_4` string,
  `quantity_price_4` string,
  `quantity_lower_bound_5` string,
  `quantity_price_5` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/AzOpenListings'
  ------------------------------------------------
Reserved_Inventory:
--------------------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_inv_reserved`(
  `sku` string,
  `fnsku` string,
  `asin` string,
  `product_name` string,
  `reserved_qty` string,
  `reserved_customerorders` string,
  `reserved_fc_transfers` string,
  `reserved_fc_processing` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/_GET_RESERVED_INVENTORY_DATA_'
---------------------------------------------------
Inventory_unsuppressed:
--------------------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_inv_unsuppressed`(
  `sku` string,
  `fnsku` string,
  `asin` string,
  `product_name` string,
  `condition` string,
  `your_price` string,
  `mfn_listing_exists` string,
  `mfn_fulfillable_quantity` string,
  `afn_listing_exists` string,
  `afn_warehouse_quantity` string,
  `afn_fulfillable_quantity` string,
  `afn_unsellable_quantity` string,
  `afn_reserved_quantity` string,
  `afn_total_quantity` string,
  `per_unit_volume` string,
  `afn_inbound_working_quantity` string,
  `afn_inbound_shipped_quantity` string,
  `afn_inbound_receiving_quantity` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/AzInventoryunsuppressed'
  ----------------------------------------------
 Az_MerchantListing:
 ------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_merchant_listings`(
  `item_name` string,
  `item_description` string,
  `listing_id` string,
  `seller_sku` string,
  `price` string,
  `quantity` string,
  `open_date` string,
  `image_url` string,
  `item_is_marketplace` string,
  `product_id_type` string,
  `zshop_shipping_fee` string,
  `item_note` string,
  `item_condition` string,
  `zshop_category1` string,
  `zshop_browse_path` string,
  `zshop_storefront_feature` string,
  `asin1` string,
  `asin2` string,
  `asin3` string,
  `will_ship_internationally` string,
  `expedited_shipping` string,
  `zshop_boldface` string,
  `product_id` string,
  `bid_for_featured_placement` string,
  `add_delete` string,
  `pending_quantity` string,
  `fulfillment_channel` string,
  `business_price` string,
  `quantity_price_type` string,
  `quantity_lower_bound_1` string,
  `quantity_price_1` string,
  `quantity_lower_bound_2` string,
  `quantity_price_2` string,
  `quantity_lower_bound_3` string,
  `quantity_price_3` string,
  `quantity_lower_bound_4` string,
  `quantity_price_4` string,
  `quantity_lower_bound_5` string,
  `quantity_price_5` string,
  `merchant_shipping_group` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/AzMerchantListings'
------------------------------------------------
Fedex_Inventory:
--------------------------------------------
CREATE EXTERNAL TABLE `fedex_inventory`(
  `requestidentifier` string,
  `transactiondate` string,
  `paging_next` string,
  `paging_previous` string,
  `inventory_allocatedcount` string,
  `inventory_availablecount` string,
  `inventory_backorderedcount` string,
  `inventory_blockedcount` string,
  `inventory_facility` string,
  `inventory_inboundinventorycount` string,
  `inventory_inboundreturncount` string,
  `inventory_sku` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/fedex_inventory'
-------------------------------------------------
Fedex_Items:
------------------------------------------------
CREATE EXTERNAL TABLE `fedex_items`(
  `requestidentifier` string,
  `success` string,
  `transactiondate` string,
  `paging_next` string,
  `items_barcodemarked` string,
  `items_batchlotrequired` string,
  `items_battery` string,
  `items_fragile` string,
  `items_hazardmaterial` string,
  `items_internationalshipping` string,
  `items_itemcost` string,
  `items_itemid` string,
  `items_liquid` string,
  `items_name` string,
  `items_perishable` string,
  `items_polybagrequired` string,
  `items_productcategory` string,
  `items_retailprice` string,
  `items_serializationrequired` string,
  `items_shipalone` string,
  `items_sku` string,
  `items_upc` string,
  `items_weight` string,
  `items_casedetails` string,
  `items_dimensions_height` string,
  `items_dimensions_length` string,
  `items_dimensions_width` string,
  `items_returniteminfo_countryoforiginrequired` string,
  `items_returniteminfo_destination` string,
  `items_returniteminfo_requirerepcapture` string,
  `items_returniteminfo_returnable` string,
  `items_returniteminfo_serialnumber` string,
  `items_variants` string,
  `items_returniteminfo_caspackingsku` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/fedex_items'
------------------------------------------------------------
Az_AllOrders:
----------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_all_orders`(
  `amazon_order_id` string,
  `merchant_order_id` string,
  `purchase_date` string,
  `last_updated_date` string,
  `order_status` string,
  `fulfillment_channel` string,
  `sales_channel` string,
  `order_channel` string,
  `url` string,
  `ship_service_level` string,
  `product_name` string,
  `sku` string,
  `asin` string,
  `item_status` string,
  `quantity` string,
  `currency` string,
  `item_price` string,
  `item_tax` string,
  `shipping_price` string,
  `shipping_tax` string,
  `gift_wrap_price` string,
  `gift_wrap_tax` string,
  `item_promotion_discount` string,
  `ship_promotion_discount` string,
  `ship_city` string,
  `ship_state` string,
  `ship_postal_code` string,
  `ship_country` string,
  `promotion_ids` string,
  `is_business_order` string,
  `purchase_order_number` string,
  `price_designation` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/AzAllOrdersData'
--------------------------------------------------------------
fulfilledshipments
--------------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_rep_fulfilledshipments`(
  `amazon_order_id` string,
  `merchant_order_id` string,
  `shipment_id` string,
  `shipment_item_id` string,
  `amazon_order_item_id` string,
  `merchant_order_item_id` string,
  `purchase_date` string,
  `payments_date` string,
  `shipment_date` string,
  `reporting_date` string,
  `buyer_email` string,
  `buyer_name` string,
  `buyer_phone_number` string,
  `sku` string,
  `product_name` string,
  `quantity_shipped` string,
  `currency` string,
  `item_price` string,
  `item_tax` string,
  `shipping_price` string,
  `shipping_tax` string,
  `gift_wrap_price` string,
  `gift_wrap_tax` string,
  `ship_service_level` string,
  `recipient_name` string,
  `ship_address_1` string,
  `ship_address_2` string,
  `ship_address_3` string,
  `ship_city` string,
  `ship_state` string,
  `ship_postal_code` string,
  `ship_country` string,
  `ship_phone_number` string,
  `bill_address_1` string,
  `bill_address_2` string,
  `bill_address_3` string,
  `bill_city` string,
  `bill_state` string,
  `bill_postal_code` string,
  `bill_country` string,
  `item_promotion_discount` string,
  `ship_promotion_discount` string,
  `carrier` string,
  `tracking_number` string,
  `estimated_arrival_date` string,
  `fulfillment_center_id` string,
  `fulfillment_channel` string,
  `sales_channel` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/AzFulFilledShipments'
-----------------------------------------------------------------
AdGroup:
-----------------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_adgroup`(
  `attributedsales7d` string,
  `attributedsales30d` string,
  `attributedunitsordered30d` string,
  `attributedsales1d` string,
  `attributedconversions1d` string,
  `attributedsales1dsamesku` string,
  `attributedconversions30d` string,
  `adgroupid` string,
  `attributedconversions7d` string,
  `attributedconversions14d` string,
  `attributedconversions7dsamesku` string,
  `attributedconversions1dsamesku` string,
  `cost` string,
  `adgroupname` string,
  `attributedunitsordered7d` string,
  `attributedsales7dsamesku` string,
  `campaignid` string,
  `ttributedsales14dsamesku` string,
  `attributedsales30dsamesku` string,
  `impressions` string,
  `attributedunitsordered1d` string,
  `attributedconversions30dsamesku` string,
  `attributedconversions14dsamesku` string,
  `clicks` string,
  `attributedsales14d` string,
  `campaignname` string,
  `attributedunitsordered14d` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/adGroup'
-------------------------------------------------------------------
Campaign:
-------------------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_campaign`(
  `attributedsales7d` string,
  `attributedsales30d` string,
  `attributedunitsordered30d` string,
  `attributedsales1d` string,
  `attributedconversions1d` string,
  `attributedsales1dsamesku` string,
  `attributedconversions30d` string,
  `attributedconversions7d` string,
  `attributedconversions14d` string,
  `campaignstatus` string,
  `attributedconversions7dsamesku` string,
  `attributedconversions1dsamesku` string,
  `cost` string,
  `attributedunitsordered7d` string,
  `attributedsales7dsamesku` string,
  `campaignid` string,
  `attributedsales14dsamesku` string,
  `attributedsales30dsamesku` string,
  `impressions` string,
  `attributedunitsordered1d` string,
  `attributedconversions30dsamesku` string,
  `campaignbudget` string,
  `attributedconversions14dsamesku` string,
  `clicks` string,
  `attributedsales14d` string,
  `campaignname` string,
  `attributedunitsordered14d` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/campaign'
----------------------------------------------------------------------------
Keyword:
----------------------------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_keyword`(
  `keywordid` string,
  `attributedsales7d` string,
  `attributedsales30d` string,
  `attributedunitsordered30d` string,
  `attributedsales1d` string,
  `attributedconversions1d` string,
  `matchtype` string,
  `attributedsales1dsamesku` string,
  `attributedconversions30d` string,
  `attributedconversions7d` string,
  `attributedconversions14d` string,
  `attributedconversions7dsamesku` string,
  `attributedconversions1dsamesku` string,
  `cost` string,
  `attributedunitsordered7d` string,
  `attributedsales7dsamesku` string,
  `campaignid` string,
  `attributedsales14dsamesku` string,
  `attributedsales30dsamesku` string,
  `impressions` string,
  `keywordtext` string,
  `attributedunitsordered1d` string,
  `attributedconversions30dsamesku` string,
  `attributedconversions14dsamesku` string,
  `clicks` string,
  `attributedsales14d` string,
  `campaignname` string,
  `attributedunitsordered14d` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/keyword'
------------------------------------------------------------------------
Product_Ad:
------------------------------------------------------------------------
CREATE EXTERNAL TABLE `amzus_productad`(
  `attributedsales7d` string,
  `attributedsales30d` string,
  `attributedunitsordered30d` string,
  `attributedsales1d` string,
  `attributedconversions1d` string,
  `attributedsales1dsamesku` string,
  `attributedconversions30d` string,
  `adgroupid` string,
  `attributedconversions7d` string,
  `attributedconversions14d` string,
  `currency` string,
  `sku` string,
  `attributedconversions7dsamesku` string,
  `attributedconversions1dsamesku` string,
  `cost` string,
  `adgroupname` string,
  `attributedunitsordered7d` string,
  `attributedsales7dsamesku` string,
  `campaignid` string,
  `attributedsales14dsamesku` string,
  `attributedsales30dsamesku` string,
  `impressions` string,
  `attributedunitsordered1d` string,
  `attributedconversions30dsamesku` string,
  `adid` string,
  `attributedconversions14dsamesku` string,
  `clicks` string,
  `asin` string,
  `attributedsales14d` string,
  `campaignname` string,
  `attributedunitsordered14d` string,
  `rec_id` string,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/productAd'
----------------------------------------------------------------------
All_PRODUCTS:
----------------------------------------------------------------------
CREATE EXTERNAL TABLE `all_products`(
  `itemno` string,
  `status` string,
  `description` string,
  `color` string,
  `longdesc` string,
  `sales_category_id` string,
  `product_line_id` string,
  `brand_family_id` string,
  `product_type_id` string,
  `color_finish_id` string,
  `material_id` string,
  `brand_id` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/allproducts'
-----------------------------------------------------------------------
Brand:
-----------------------------------------------------------------------
CREATE EXTERNAL TABLE `brand`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/brand'
-------------------------------------------------------------------------
Brand_Family:
------------------------------------------------------------------------
CREATE EXTERNAL TABLE `brand_family`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/brand_family'
-----------------------------------------------------------------------------
Color_Finish:
-----------------------------------------------------------------------------
CREATE EXTERNAL TABLE `color_finish`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/color_finish'
---------------------------------------------------------------------------------
Material:
---------------------------------------------------------------------------------
CREATE EXTERNAL TABLE `material`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/material'
  ------------------------------------------------------------------------------
Product_Line:
--------------------------------------------------------------------------------
CREATE EXTERNAL TABLE `product_line`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/product_line'
------------------------------------------------------------------------------------
Product_Type:
------------------------------------------------------------------------------------
CREATE EXTERNAL TABLE `product_type`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/product_type'
-----------------------------------------------------------------------------------------
Sales_Category:
-----------------------------------------------------------------------------------------
CREATE EXTERNAL TABLE `sales_category`(
  `id` string,
  `is_archived` string,
  `name` string,
  `rec_id` bigint,
  `run_id` string,
  `eff_strt_ts` timestamp,
  `eff_end_ts` timestamp,
  `action_code` string)
PARTITIONED BY (
  `bus_dt` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'file:/datadrive/mdpdev/intzone/sales_category'
------------------------------------------------------------------------------------------
