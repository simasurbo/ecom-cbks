# may-2015-ecom-cbks
This dataset analyzes a one month dataset of transactions reported for chargebacks from an e-commerce company in May 2015


# Objective
To discover a pattern for fraud in the dataset of transactions
# Problems
- The Head of Fraud noticed a recent spike in transactions reported for fraud
- The Fraud Team is too busy to investigate this case
- Independent advisors are too expensive
Target
- Primary: Head of Fraud

# Data Source
Data needed to process NYSE data:
Card Number	
Date	
Amount	
CBK

Data is sourced from Kaggle (CSV): https://www.kaggle.com/datasets/dmirandaalves/predict-chargeback-frauds-payment 

Stages
- Design
- Development
- Testing
- Analysis


# Dashboard
- What is the total number of transactions, and what percentage were marked as chargebacks (fraud)?
- What is the total monetary value of all transactions? How much of this value is associated with chargebacks?
- Are there specific time periods (e.g., hours, days, or months) with a higher occurrence of chargebacks?
- Is there a noticeable trend in chargeback frequency over time?
- Are there customers (e.g., card numbers) with multiple chargebacks? How frequently do they occur?
- Is there a specific transaction amount range that has a higher likelihood of chargebacks?
- Are there patterns of repeated transactions with identical amounts and short time intervals? Do these correlate with chargebacks?

## Tools
- Google Sheets - Exploring the Data
- SQL - Cleaning, testing and analyzing the data
- PowerBI - Visualizing the data via interactive dashboards
- GitHub - Hosting the project documentation and version control

# Development

## Pseudocode
1. Get the data
2. Explore the data in Excel
3. Load the data into SQL Server
4. Clean the data with SQL
5. Test the data with SQL
6. Visualize the data in Power BI
7. Generate the findings based on the insights
8. Write the documentation + commentary
9. Publish the data to GitHub Pages

## Data Exploration
1. 4 columns contain the necessary data for this analysis. There is no need to contact the client for additional data.
2. The second column contains the ticker symbol.
3. We have more data than we need, so at least one of these columns would need to be removed

## Data Cleaning
The goal is to refine the dataset to ensure it is structured and ready for analysis. The cleaned data should meet the following criteria and constraints:

Only relevant columns should be retained.
All data types should be appropriate for the contents of each column.
No column should contain null values, indicating complete data for all records.
| Property | Description |
--------------------------
| Number of rows | 100 |
| Number of columns | 4 |


# Data Processing

# Create SQL View

# Testing
## Data Quality Tests

# Visualization


# Analysis
1. What is the total number of transactions, and what percentage were marked as chargebacks (fraud)?
2. What is the total monetary value of all transactions? How much of this value is associated with chargebacks?
3. Are there specific time periods (e.g., hours, days, or months) with a higher occurrence of chargebacks?
4. Is there a noticeable trend in chargeback frequency over time?
5. Are there customers (e.g., card numbers) with multiple chargebacks? How frequently do they occur?
6. Is there a specific transaction amount range that has a higher likelihood of chargebacks?
7. Are there patterns of repeated transactions with identical amounts and short time intervals? Do these correlate with chargebacks?


## 1. What is the total number of transactions, and what percentage were marked as chargebacks (fraud)?
- Total number of transactions: 11,127
- Total number of transactions marked as chargebacks: 572 (5.14%)


## 2. What is the total monetary value of all transactions? How much of this value is associated with chargebacks?
- Total $ in transactions: $1,441,613.25
- Total $ in transactions marked as chargebacks: $104,847.86

## 3. Are there specific time periods (e.g., hours, days) with a higher occurrence of chargebacks?

| Hour | Occurrence (by count) |
--------------------------
| 16 | 98 |
| 15 | 69 |
| 17 | 42 |


| Day | Occurrence (by count) |
--------------------------
| 28 | 44 |
| 11 | 41 |
| 29 | 39 |


## 4. Is there a noticeable trend in chargeback frequency over time?
- Some amounts reported for chargeback occur significantly more often than others:
  

| Amount | Occurrence (by count) |
--------------------------
| $46.00 | 50 |
| $172.50 | 34 |
| $57.50 | 29 |


## 5. Are there customers (e.g., card numbers) with multiple chargebacks? How frequently do they occur?
- There are several customers that have multiple chargebacks

### Top 5 by $

| Card Number | $ reported for chargeback|
--------------------------
| 552289******7788 | $5,000.00 |
| 498407******2077 | $3,055.95 |
| 498442******7796 | $2,794.00 |
| 453211******8940 | $2,760.00 |
| 521397******2711 | $2,453.10 |

### Top 5 by count

| Card Number | Count reported for chargeback|
--------------------------
| 521397******2711 | 20 |
| 552289******7788 | 20 |
| 544828******8377 | 15 |
| 400217******7228 | 12 |
| 498407******2077 | 12 |


## 6. Is there a specific transaction amount range that has a higher likelihood of chargebacks?
- Certain specific amounts result in higher likelihood of chargebacks
  - For example, $46.00 has been reported for chargebacks 50 times (the highest of any amount) but 322 transactions for the same amount were not reported for chargebacks
  - Alternatively, all 20 transactions for $250.00 have been reported for chargebacks

- The highest and lowest transactions also have not been reported for chargebacks.
  - However, certain high amounts do result in 100% chargeback rate. For example, there are 5 transactions for $1012.00, all of which have been reported for chargebacks.

## 7. Are there patterns of repeated transactions with identical amounts and short time intervals? Do these correlate with chargebacks?
- Yes, there are clusters of transactions with identical amounts and short time intervals that do correlate with chargebacks. For example:
  - On 5/1 between 9:13 and 9:31, there were 11 transactions for $126.50, all reported for chargebacks. This occurred across two customers' accounts.

- Similarly, certain customers were affected with clusters of transactions for different amount.
  - For example, on 5/4, cardholder **2487 had 3 transaction in less than 3 minutes for $414.00, $506.00 and $460.00 - all reported for chargebacks


















