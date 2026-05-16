# Data Cleaning in Snowflake

A hands-on Snowflake SQL project focused on cleaning and transforming messy customer data into an analysis-ready dataset.

This project follows a real-world scenario where customer data contains common quality issues including duplicate records, missing values, inconsistent formatting, merged fields, and incorrect data types. The goal was to clean and standardize the data, create reusable views, and identify inactive customers for a marketing campaign.

## Project Goals

- Load and explore raw customer data
- Identify data quality problems
- Clean and standardize inconsistent values
- Handle missing data
- Detect and remove duplicate records
- Create calculated fields
- Build reusable views for future analysis
- Generate a list of inactive customers

---

## Skills Demonstrated

### Snowflake
- Database context setup
- Warehouses
- Databases
- Schemas
- Views

### SQL Data Cleaning Techniques
- String manipulation
- Date conversion
- Data transformation
- Null handling
- Duplicate detection
- Window functions

### SQL Functions Used

```sql
TRIM()
LTRIM()
RTRIM()
CONCAT()
SPLIT_PART()
TO_DATE()
DATEDIFF()
CURRENT_DATE()
IFF()
IS NULL
COUNT()
RANK()
PARTITION BY
QUALIFY
CREATE VIEW
```

---

## Workflow

### 1. Load Data
Imported and configured project datasets within Snowflake.

### 2. Investigate Data Quality
Reviewed datasets for:
- Missing values
- Duplicates
- Formatting inconsistencies
- Incorrect data types
  
### Data Quality Investigation
Profiling the dataset to identify missing values, duplicates, and formatting inconsistencies.
-<img width="2191" height="865" alt="image" src="https://github.com/user-attachments/assets/e9e051ee-b30b-44ae-9bda-af732d52d30b" />


### 3. Clean Text Fields
Applied string functions to:
- Remove unwanted characters
- Standardize formatting
- Split combined columns

### Data Cleaning Transformations
Applying SQL functions to standardize text fields, split names, and convert dates.
<img width="1198" height="602" alt="image" src="https://github.com/user-attachments/assets/5db2ae27-6b2f-485e-a8a3-5b5d90e1821a" />

### 4. Convert Dates
Converted text values into usable date fields.

### 5. Create Calculated Fields
Calculated:

- Days Since Last Transaction

Example:

```sql
DATEDIFF(
    day,
    LastTransaction,
    CURRENT_DATE()
)
```
### Inactive Customer Analysis
Identified customers with no transactions within the previous 90 days for marketing targeting.
-<img width="1103" height="554" alt="image" src="https://github.com/user-attachments/assets/27d183de-71e8-4a0f-853f-3a1e743bd5fd" />

### 6. Handle Missing Data
Applied data quality strategies:

- Imputation
- Conditional logic
- Null handling

### 7. Remove Duplicates
Used:

```sql
RANK()
PARTITION BY
QUALIFY
```

to identify and keep the appropriate customer records.

### 8. Create Reusable Views

Built SQL views to scale the solution and simplify future analysis.

---

## Example Business Question

**Which customers have not made a transaction within the last 90 days?**

The final cleaned dataset enables quick identification of inactive customers for targeted marketing campaigns.

---

## Repository Structure

```
/
├── SQL/
│   ├── load_data.sql
│   ├── data_cleaning.sql
│   ├── customer_view.sql
│
├── datasets/
│
├── screenshots/
│
└── README.md
```

---

## Key Takeaways

This project strengthened practical skills in:

- SQL transformation workflows
- Snowflake fundamentals
- Data preparation techniques
- Reusable data engineering practices
- Real-world data quality problem solving

---

## Future Improvements

- Automate data ingestion using Snowpipe
- Add dbt transformations
- Create a Power BI dashboard from cleaned output
- Build an automated pipeline

---

Created by Maricia Alleman
