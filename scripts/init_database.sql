/*
=============================================================
Create Database and Schemas 
=============================================================
Script Purpose:
    This script creates a new database named 'data_warehouse_project' 
    after checking if it already exists. If the database exists, 
    it is dropped and recreated. Additionally, it creates three 
    schemas/databases: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the 'data_warehouse_project' database 
    if it exists. All data in the database will be permanently deleted. 
    Proceed with caution and ensure you have proper backups.
*/

-- Show existing databases
SHOW DATABASES;

-- Drop the database if it exists
DROP DATABASE IF EXISTS data_warehouse_project;

-- Create the main database
CREATE DATABASE data_warehouse_project;

-- Switch to the new database
USE data_warehouse_project;

-- Confirm current database
SELECT DATABASE() AS current_database;

-- In MySQL, CREATE SCHEMA is a synonym for CREATE DATABASE
-- Creating bronze, silver, gold as separate schemas/databases
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;

-- Optional: Show databases to confirm
SHOW DATABASES;
