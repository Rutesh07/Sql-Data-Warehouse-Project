/*
===============================================================================
Stored Procedure: load_bronze
===============================================================================
Purpose:
    Loads CSV files into the bronze schema tables.
    - Truncates tables before load
    - Uses LOAD DATA LOCAL INFILE for bulk ingestion
===============================================================================
*/

DELIMITER $$

DROP PROCEDURE IF EXISTS bronze.load_bronze $$

CREATE PROCEDURE bronze.load_bronze()
BEGIN

    DECLARE batch_start DATETIME;
    DECLARE batch_end DATETIME;

    SET batch_start = NOW();

    SELECT '========================================' AS message;
    SELECT 'Loading Bronze Layer Started...' AS message;
    SELECT '========================================' AS message;

    -- ===============================
    -- CRM TABLES
    -- ===============================

    SELECT 'Loading CRM Tables...' AS message;

    TRUNCATE TABLE bronze.crm_cust_info;

    LOAD DATA LOCAL INFILE '/Users/ruteshzalavadiya/Desktop/source_crm/crm_cust_info.csv'
    INTO TABLE bronze.crm_cust_info
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.crm_prd_info;

    LOAD DATA LOCAL INFILE '/Users/ruteshzalavadiya/Desktop/source_crm/crm_prd_info.csv'
    INTO TABLE bronze.crm_prd_info
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.crm_sales_details;

    LOAD DATA LOCAL INFILE '/Users/ruteshzalavadiya/Desktop/source_crm/crm_sales_details.csv'
    INTO TABLE bronze.crm_sales_details
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    -- ===============================
    -- ERP TABLES
    -- ===============================

    SELECT 'Loading ERP Tables...' AS message;

    TRUNCATE TABLE bronze.erp_loc_a101;

    LOAD DATA LOCAL INFILE '/Users/ruteshzalavadiya/Desktop/source_crm/erp_loc_a101.csv'
    INTO TABLE bronze.erp_loc_a101
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.erp_cust_az12;

    LOAD DATA LOCAL INFILE '/Users/ruteshzalavadiya/Desktop/source_crm/erp_cust_az12.csv'
    INTO TABLE bronze.erp_cust_az12
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    LOAD DATA LOCAL INFILE '/Users/ruteshzalavadiya/Desktop/source_crm/erp_px_cat_g1v2.csv'
    INTO TABLE bronze.erp_px_cat_g1v2
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

    SET batch_end = NOW();

    SELECT '========================================' AS message;
    SELECT 'Bronze Layer Load Completed' AS message;
    SELECT CONCAT('Total Load Time (seconds): ',
                  TIMESTAMPDIFF(SECOND, batch_start, batch_end)) AS duration;
    SELECT '========================================' AS message;

END $$

DELIMITER ;



CALL bronze.load_bronze();
