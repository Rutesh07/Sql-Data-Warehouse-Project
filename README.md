# 📊 Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  
This project demonstrates a complete **end-to-end data warehousing and analytics solution**, from raw data ingestion to business-ready analytics. It is designed as a **portfolio project** showcasing industry best practices in **data engineering, data modeling, and analytics**.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture** pattern with **Bronze, Silver, and Gold layers**:

### 🔹 Bronze Layer
- Stores **raw data as-is** from source systems  
- Data is ingested from **CSV files** into a **SQL Server database**

### 🔸 Silver Layer
- Performs **data cleansing, standardization, and normalization**
- Prepares clean and reliable data for analytical use

### ⭐ Gold Layer
- Contains **business-ready data**
- Modeled using a **Star Schema** optimized for reporting and analytics

---

## 📖 Project Overview

This project covers the complete analytics lifecycle:

- **Data Architecture**  
  Designing a modern data warehouse using Medallion Architecture

- **ETL Pipelines**  
  Extracting, transforming, and loading data from ERP and CRM source systems

- **Data Modeling**  
  Creating fact and dimension tables optimized for analytical queries

- **Analytics & Reporting**  
  Writing SQL-based reports to generate actionable business insights

---

## 🎯 Who Is This Project For?

This repository is ideal for professionals and students aiming to showcase expertise in:

- SQL Development  
- Data Engineering  
- Data Architecture  
- ETL Pipeline Development  
- Data Modeling  
- Data Analytics  

---

## 🛠️ Tools & Resources (All Free)

- **Datasets** – CSV files used as ERP and CRM data sources  
- **SQL Server Express** – Lightweight SQL Server for hosting the warehouse  
- **SQL Server Management Studio (SSMS)** – GUI for database management  
- **GitHub** – Version control and project collaboration  
- **Draw.io** – Architecture, data models, and data flow diagrams  
- **Notion** – Project template and task breakdown  

---

## 🚀 Project Requirements

### 🏗️ Building the Data Warehouse (Data Engineering)

**Objective**  
Develop a modern data warehouse using SQL Server to consolidate sales data and enable analytical reporting.

**Specifications**
- **Data Sources:** ERP and CRM systems provided as CSV files  
- **Data Quality:** Clean and resolve data quality issues before analysis  
- **Integration:** Combine both sources into a unified analytical data model  
- **Scope:** Focus on the latest data only (no historization required)  
- **Documentation:** Provide clear data model documentation for business and analytics users  

---

### 📊 BI: Analytics & Reporting (Data Analysis)

**Objective**  
Develop SQL-based analytics to generate insights into:

- Customer Behavior  
- Product Performance  
- Sales Trends  

These insights support data-driven decision-making for stakeholders.

For detailed requirements, see:  
📄 `docs/requirements.md`

---

## 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/                           # Raw ERP and CRM CSV datasets
│
├── docs/                               # Project documentation & diagrams
│   ├── etl.drawio                      # ETL techniques and methods
│   ├── data_architecture.drawio        # Overall system architecture
│   ├── data_catalog.md                 # Dataset metadata and descriptions
│   ├── data_flow.drawio                # Data flow diagram
│   ├── data_models.drawio              # Star schema data models
│   ├── naming-conventions.md           # Naming standards
│
├── scripts/                            # SQL scripts
│   ├── bronze/                         # Raw data ingestion scripts
│   ├── silver/                         # Data cleaning & transformation scripts
│   ├── gold/                           # Analytical models and views
│
├── tests/                              # Data quality and validation scripts
│
├── README.md                           # Project overview
├── LICENSE                             # License information
├── .gitignore                          # Git ignore rules
└── requirements.txt                    # Project requirements

---

## Credits
Built with guidance and inspiration from **Data With Baraa**.
