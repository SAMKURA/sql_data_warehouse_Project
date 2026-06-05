/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

IF Object_ID ('bronze.crm_cust_info' , 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
GO
create table bronze.crm_cust_info (
	cst_id int,
	cst_key Nvarchar (50),
	cst_firstname Nvarchar (50),
	cst_lastname Nvarchar (50),
	cst_marital_status Nvarchar (50),
	cst_gndr Nvarchar (50),
	cst_create_date date
);
GO

IF Object_ID ('bronze.crm_prd_info' , 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
GO
create table bronze.crm_prd_info (
	prd_id int,
	prd_key NVarchar (50),
	prd_nm NVarchar (50),
	prd_cost int,
	prd_line NVarchar (50),
	prd_start_dt datetime,
	prd_end_dt datetime
);
GO

IF Object_ID ('bronze.crm_sales_details' , 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
GO
create table bronze.crm_sales_details (
	sls_ord_num NVarchar (50),
	sls_prd_key NVarchar (50),
	sls_cust_id int,
	sls_order_dt int,
	sls_ship_dt int,
	sls_due_dt int,
	sls_sales int,
	sls_quantity int,
	sls_price int
);
GO


IF Object_ID ('bronze.erp_CUST_AZ12' , 'U') IS NOT NULL
	DROP TABLE bronze.erp_CUST_AZ12;
GO
create table bronze.erp_CUST_AZ12 (
CID Nvarchar (50),
BDATE date,
GEN Nvarchar (50)
);
GO

IF Object_ID ('bronze.erp_LOC_A101' , 'U') IS NOT NULL
	DROP TABLE bronze.erp_LOC_A101;
GO
create table bronze.erp_LOC_A101 (
CID Nvarchar (50),
CNTRY Nvarchar (50)
);
GO

IF Object_ID ('bronze.erp_PX_CAT_G1V2' , 'U') IS NOT NULL
	DROP TABLE bronze.erp_PX_CAT_G1V2;
GO
create table bronze.erp_PX_CAT_G1V2 (
ID Nvarchar (50),
CAT Nvarchar (50),
SUBCAT Nvarchar (50),
MAINTENANCE Nvarchar (50)
)
GO
