/****** Object:  Table [mdesign].[DIM_CAMPAIGN_AD]    Script Date: 6/14/2019 5:02:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[DIM_CAMPAIGN_AD](
	[campaign_ad_id] [varchar](50) NOT NULL,
	[campaignId] [varchar](50) NULL,
	[adGroupId] [varchar](50) NULL,
	[campaignName] [nvarchar](max) NULL,
	[campaignStatus] [varchar](50) NULL,
	[campaignBudget] [decimal](12, 2) NULL,
	[adGroupName] [nvarchar](max) NULL,
	[effective_start_date] [datetime] NOT NULL,
	[effective_end_date] [datetime] NOT NULL,
	[run_instance_id] [varchar](50) NOT NULL,
	[record_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[campaign_ad_id] ASC,
	[effective_start_date] ASC,
	[effective_end_date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
----------------------------------------------------
/****** Object:  Table [mdesign].[DIM_CUSTOMER]    Script Date: 6/14/2019 5:02:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[DIM_CUSTOMER](
	[Customer_ID] [varchar](50) NOT NULL,
	[recipient_name] [varchar](50) NULL,
	[ship_address_1] [varchar](100) NULL,
	[ship_address_2] [varchar](100) NULL,
	[ship_address_3] [varchar](100) NULL,
	[ship_city] [varchar](50) NULL,
	[ship_state] [varchar](50) NULL,
	[ship_postal_code] [varchar](50) NULL,
	[ship_country] [varchar](50) NULL,
	[ship_phone_number] [varchar](50) NULL,
	[bill_address_1] [varchar](100) NULL,
	[bill_address_2] [varchar](100) NULL,
	[bill_address_3] [varchar](100) NULL,
	[bill_city] [varchar](50) NULL,
	[bill_state] [varchar](50) NULL,
	[bill_postal_code] [varchar](50) NULL,
	[bill_country] [varchar](50) NULL,
	[effective_start_date] [datetime] NOT NULL,
	[effective_end_date] [datetime] NOT NULL,
	[run_instance_id] [varchar](50) NOT NULL,
	[record_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC,
	[effective_start_date] ASC,
	[effective_end_date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-------------------------------------------------------------
/****** Object:  Table [mdesign].[DIM_DATE]    Script Date: 6/14/2019 5:05:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_DATE](
	[Date] [date] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[WeekDayName] [varchar](10) NOT NULL,
	[DayOfYear] [smallint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[Month] [tinyint] NOT NULL,
	[MonthName] [varchar](10) NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) NOT NULL,
	[Year] [int] NOT NULL,
	[YYYYMM] [char](6) NOT NULL,
	[MonthYear] [char](7) NOT NULL
) ON [PRIMARY]
GO

--------------------------------------------------
/****** Object:  Table [mdesign].[DIM_LOCATION]    Script Date: 6/14/2019 5:05:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[DIM_LOCATION](
	[location_id] [varchar](50) NOT NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[postal_code] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[effective_start_date] [datetime] NOT NULL,
	[effective_end_date] [datetime] NOT NULL,
	[run_instance_id] [varchar](50) NOT NULL,
	[record_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC,
	[effective_start_date] ASC,
	[effective_end_date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------------------------------------------------
/****** Object:  Table [mdesign].[DIM_PLATFORM]    Script Date: 9/16/2019 7:14:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[DIM_PLATFORM](
	[platform_id] [varchar](255) NOT NULL,
	[platform_name] [varchar](255) NULL,
	[platform_description] [varchar](255) NULL,
	[platform_onboarding_date] [date] NULL,
	[platform_offboarding_date] [date] NULL,
	[platform_status] [varchar](255) NULL,
	[platform_offline_online_ind] [varchar](255) NULL,
	[effective_start_date] [datetime] NOT NULL,
	[effective_end_date] [datetime] NOT NULL,
	[run_instance_id] [varchar](50) NOT NULL,
	[record_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[platform_id] ASC,
	[effective_start_date] ASC,
	[effective_end_date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
----------------------------------------------------------------
/****** Object:  Table [mdesign].[DIM_PRODUCT]    Script Date: 9/16/2019 7:15:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[DIM_PRODUCT](
	[product_id] [varchar](50) NOT NULL,
	[sku] [varchar](50) NULL,
	[product_name] [nvarchar](max) NULL,
	[product_description] [nvarchar](max) NULL,
	[product_color] [varchar](50) NULL,
	[product_long_description] [nvarchar](max) NULL,
	[Product_Volume] [decimal](12, 2) NULL,
	[Product_Length] [decimal](12, 2) NULL,
	[Product_Breadth] [decimal](12, 2) NULL,
	[Product_Width] [decimal](12, 2) NULL,
	[Product_Purchased_Unit_Cost] [decimal](12, 2) NULL,
	[Product_Launch_Date] [datetime] NOT NULL,
	[Product_Decommision_Date] [datetime] NOT NULL,
	[Product_Deletion_Date] [datetime] NOT NULL,
	[Image_url] [nvarchar](max) NOT NULL,
	[product_status] [varchar](50) NULL,
	[Product_sales_category] [varchar](50) NULL,
	[Product_line] [varchar](50) NULL,
	[Product_type] [varchar](50) NULL,
	[Product_color_finish] [varchar](50) NULL,
	[Product_material] [varchar](50) NULL,
	[product_brand] [varchar](50) NULL,
	[product_brand_family] [varchar](50) NULL,
	[effective_start_date] [datetime] NOT NULL,
	[effective_end_date] [datetime] NOT NULL,
	[run_instance_id] [varchar](50) NULL,
	[record_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[effective_start_date] ASC,
	[effective_end_date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

--------------------------------------------
/****** Object:  Table [mdesign].[DIM_PRODUCT_PTFRM]    Script Date: 9/16/2019 7:16:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[DIM_PRODUCT_PTFRM](
	[platform_product_id] [varchar](100) NOT NULL,
	[product_dim_id] [varchar](100) NULL,
	[sku] [varchar](50) NULL,
	[PSIN] [varchar](50) NULL,
	[PSIN2] [varchar](50) NULL,
	[PSIN3] [varchar](50) NULL,
	[Product_Name] [nvarchar](max) NULL,
	[product_description] [nvarchar](max) NULL,
	[Product_Volume] [int] NOT NULL,
	[Product_Launch_Date] [date] NULL,
	[Product_decommission] [date] NULL,
	[Product_Decommission_Date] [date] NULL,
	[Product_Deletion_Date] [date] NULL,
	[Classification] [varchar](50) NULL,
	[Image] [nvarchar](max) NULL,
	[Platform_ID] [varchar](100) NOT NULL,
	[Product_is_Marketplace] [varchar](250) NULL,
	[Product_Id_Type] [varchar](250) NULL,
	[Product_Note] [varchar](250) NULL,
	[Product_Condition] [varchar](250) NULL,
	[Product_ship_internationally_id] [varchar](150) NULL,
	[Product_Id] [varchar](150) NULL,
	[Product_bid_for_feature] [varchar](150) NULL,
	[Product_add_delete] [varchar](150) NULL,
	[Product_Merchant_Shipping_Group] [varchar](150) NULL,
	[effective_start_date] [datetime] NOT NULL,
	[effective_end_date] [datetime] NOT NULL,
	[run_instance_id] [varchar](150) NOT NULL,
	[record_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[platform_product_id] ASC,
	[effective_start_date] ASC,
	[effective_end_date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
------------------------------------------------------------------
/****** Object:  Table [mdesign].[FACT_PRODUCT_CAMPAIGN]    Script Date: 9/16/2019 7:18:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[FACT_PRODUCT_CAMPAIGN](
	[product_id] [varchar](50) NOT NULL,
	[Platform_Product_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Platform_id] [varchar](50) NOT NULL,
	[Campaign_Ad_id] [varchar](50) NOT NULL,
	[currency] [decimal](12, 2) NULL,
	[cost] [decimal](12, 2) NULL,
	[clicks] [int] NULL,
	[impressions] [int] NULL,
	[attributedUnitsOrdered1d] [int] NULL,
	[attributedUnitsOrdered7d] [int] NULL,
	[attributedUnitsOrdered14d] [int] NULL,
	[attributedUnitsOrdered30d] [int] NULL,
	[attributedConversions1d] [int] NULL,
	[attributedConversions7d] [int] NULL,
	[attributedConversions14d] [int] NULL,
	[attributedConversions30d] [int] NULL,
	[attributedConversions1dSameSKU] [int] NULL,
	[attributedConversions7dSameSKU] [int] NULL,
	[attributedConversions14dSameSKU] [int] NULL,
	[attributedConversions30dSameSKU] [int] NULL,
	[attributedSales1d] [int] NULL,
	[attributedSales7d] [int] NULL,
	[attributedSales14d] [int] NULL,
	[attributedSales30d] [int] NULL,
	[attributedSales1dSameSKU] [int] NULL,
	[attributedSales7dSameSKU] [int] NULL,
	[attributedSales14dSameSKU] [int] NULL,
	[attributedSales30dSameSKU] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Campaign_Ad_id] ASC,
	[product_id] ASC,
	[Date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------------------------------------------
/****** Object:  Table [mdesign].[FACT_PRODUCT_HEALTH]    Script Date: 9/16/2019 7:19:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[FACT_PRODUCT_HEALTH](
	[product_id] [varchar](50) NOT NULL,
	[Platform_Product_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Platform_id] [varchar](50) NOT NULL,
	[day_of_week] [varchar](20) NULL,
	[product_group] [varchar](250) NOT NULL,
	[sales_rank] [int] NULL,
	[sales_rank_yesterday] [int] NULL,
	[sales_rank_last_week_day] [int] NULL,
	[sales_rank_last_month_day] [int] NULL,
	[total_quantity] [int] NULL,
	[sellable_quantity] [int] NULL,
	[unsellable_quantity] [int] NULL,
	[inv_age_0_to_90_days] [int] NULL,
	[inv_age_91_to_180_days] [int] NULL,
	[inv_age_181_to_270_days] [int] NULL,
	[inv_age_271_to_365_days] [int] NULL,
	[inv_age_365_plus_days] [int] NULL,
	[units_shipped_last_24_hrs] [int] NULL,
	[units_shipped_last_7_days] [int] NULL,
	[units_shipped_last_30_days] [int] NULL,
	[units_shipped_last_90_days] [int] NULL,
	[units_shipped_last_180_days] [int] NULL,
	[units_shipped_last_365_days] [int] NULL,
	[weeks_of_cover_t7] [int] NULL,
	[weeks_of_cover_t30] [int] NULL,
	[weeks_of_cover_t90] [int] NULL,
	[weeks_of_cover_t180] [int] NULL,
	[weeks_of_cover_t365] [int] NULL,
	[num_afn_new_sellers] [int] NULL,
	[num_afn_used_sellers] [int] NULL,
	[currency] [varchar](20) NULL,
	[your_price] [decimal](12, 2) NULL,
	[sales_price] [decimal](12, 2) NULL,
	[lowest_afn_new_price] [decimal](12, 2) NULL,
	[lowest_afn_used_price] [decimal](12, 2) NULL,
	[lowest_mfn_new_price] [decimal](12, 2) NULL,
	[lowest_mfn_used_price] [decimal](12, 2) NULL,
	[qty_to_be_charged_ltsf_12_mo] [int] NULL,
	[qty_in_long_term_storage_program] [int] NULL,
	[qty_with_removals_in_progress] [int] NULL,
	[projected_ltsf_12_mo] [int] NULL,
	[per_unit_volume] [int] NULL,
	[is_hazmat] [varchar](20) NULL,
	[in_bound_quantity] [int] NULL,
	[asin_limit] [int] NULL,
	[inbound_recommend_quantity] [int] NULL,
	[qty_to_be_charged_ltsf_6_mo] [int] NULL,
	[projected_ltsf_6_mo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Platform_Product_ID] ASC,
	[Platform_id] ASC,
	[Date] ASC,
	[product_group] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------------------------
/****** Object:  Table [mdesign].[FACT_PRODUCT_LISTING]    Script Date: 9/16/2019 7:20:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[FACT_PRODUCT_LISTING](
	[product_id] [varchar](50) NOT NULL,
	[Platform_Product_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Platform_id] [varchar](50) NOT NULL,
	[Product_Sale_Price] [decimal](12, 2) NULL,
	[Product_Quantity] [int] NULL,
	[Product_expedited_shipping] [varchar](50) NULL,
	[Product_pending_quantity] [int] NULL,
	[Product_fulfillment_channel] [varchar](50) NULL,
	[Product_Business_Price] [decimal](12, 2) NULL,
	[Product_Quantity_Price_Type] [int] NULL,
	[Product_Quantity_Lower_Bound_1] [int] NULL,
	[Product_Quantity_Price_1] [decimal](12, 2) NULL,
	[Product_Quantity_Lower_Bound_2] [int] NULL,
	[Product_Quantity_Price_2] [decimal](12, 2) NULL,
	[Product_Quantity_Lower_Bound_3] [int] NULL,
	[Product_Quantity_Price_3] [decimal](12, 2) NULL,
	[Product_Quantity_Lower_Bound_4] [int] NULL,
	[Product_Quantity_Price_4] [decimal](12, 2) NULL,
	[Product_Quantity_Lower_Bound_5] [int] NULL,
	[Product_Quantity_Price_5] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Platform_Product_ID] ASC,
	[Date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--------------------------------------------------------------
/****** Object:  Table [mdesign].[FACT_PRODUCT_PFTRM_INVENTORY]    Script Date: 9/16/2019 7:21:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[FACT_PRODUCT_PFTRM_INVENTORY](
	[product_id] [varchar](50) NOT NULL,
	[Platform_Product_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Platform_id] [varchar](50) NOT NULL,
	[condition] [varchar](20) NULL,
	[your_price] [decimal](12, 2) NULL,
	[mfn_listing_exists] [varchar](20) NULL,
	[mfn_fulfillable_quantity] [int] NULL,
	[afn_listing_exists] [varchar](20) NULL,
	[afn_warehouse_quantity] [int] NULL,
	[afn_fulfillable_quantity] [int] NULL,
	[afn_unsellable_quantity] [int] NULL,
	[afn_reserved_quantity] [int] NULL,
	[afn_total_quantity] [int] NULL,
	[per_unit_volume] [decimal](12, 2) NULL,
	[afn_inbound_working_quantity] [int] NULL,
	[afn_inbound_shipped_quantity] [int] NULL,
	[afn_inbound_receiving_quantity] [int] NULL,
	[reserved_qty] [int] NULL,
	[reserved_customerorders] [int] NULL,
	[reserved_fc_transfers] [int] NULL,
	[reserved_fc_processing] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Platform_Product_ID] ASC,
	[Date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


-------------------------------------------------------------
/****** Object:  Table [mdesign].[FACT_ALL_ORDERS]    Script Date: 9/16/2019 7:22:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[FACT_ALL_ORDERS](
	[product_id] [varchar](50) NOT NULL,
	[Platform_Product_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Platform_id] [varchar](50) NOT NULL,
	[Platform_order_id] [varchar](50) NOT NULL,
	[merchant_order_id] [varchar](50) NOT NULL,
	[purchase_date] [datetime] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
	[order_status] [varchar](50) NOT NULL,
	[item_status] [varchar](50) NOT NULL,
	[fulfillment_channel] [varchar](50) NOT NULL,
	[sales_channel] [varchar](50) NOT NULL,
	[order_channel] [varchar](50) NOT NULL,
	[ship_service_level] [varchar](50) NOT NULL,
	[quantity] [int] NULL,
	[currency] [varchar](20) NULL,
	[item_price] [decimal](12, 2) NULL,
	[item_tax] [decimal](12, 2) NULL,
	[shipping_price] [decimal](12, 2) NULL,
	[shipping_tax] [decimal](12, 2) NULL,
	[gift_wrap_price] [decimal](12, 2) NULL,
	[gift_wrap_tax] [decimal](12, 2) NULL,
	[item_promotion_discount] [decimal](12, 2) NULL,
	[ship_promotion_discount] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Platform_order_id] ASC,
	[merchant_order_id] ASC,
	[product_id] ASC,
	[Platform_Product_ID] ASC,
	[Date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
---------------------------------
/****** Object:  Table [mdesign].[PRODUCT_X_CUSTOMER]    Script Date: 9/16/2019 7:23:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[PRODUCT_X_CUSTOMER](
	[Product_id] [nvarchar](max) NULL,
	[Customer_ID] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
---------------------------------------
/****** Object:  Table [mdesign].[PRODUCT_X_LOCATION]    Script Date: 9/16/2019 7:23:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [mdesign].[PRODUCT_X_LOCATION](
	[Product_id] [nvarchar](max) NULL,
	[platform_product_id] [nvarchar](max) NOT NULL,
	[location_id] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


--------------------