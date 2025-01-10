# Chargeback Fraud Analysis: E-Commerce Transactions Dataset (May 2015)
  - This dataset analyzes a one-month dataset of transactions reported for chargebacks from an e-commerce company in May 2015

# Table of contents
- [Objective](#objective)
  -   [Problems](#problems)
  -   [Target](#target)
- [Data Source](#data-source)
- [Stages](#stages)
  -   [Dashboard](#dashboard)
  -   [Tools](#tools)
- [Development](#development)
  -   [Pseudocode](#pseudocode)
  -   [Data Exploration](#data-exploration)
  -   [Data Cleaning](#data-cleaning)
- [Data Processing](#data-processing)
  -   [Create SQL View](#create-sql-view)
- [Testing](#testing)
  -   [Data Quality Tests](#data-quality-tests)
- [Visualization](#visualization)
  -   [Results](#results)
  -   [DAX Measures](#dax-measures)
- [Analysis](#analysis)
  -   [Validation](#validation)
  -   [Discovery](#discovery)
   -  [SQL Query](#sql-query) 
- [Recommendations](#recommendations)
  -   [Potential Courses of Action](#potential-courses-of-action)
- [Conclusion](#conclusion)


# Objective
To identify patterns of fraudulent transactions, provide actionable insights, and recommend preventive measures for the Head of Fraud

## Problems
- The Head of Fraud noticed a recent spike in transactions reported for fraud
- The Fraud Team is too busy to investigate this case
- Independent advisors are too expensive
- Not addressing this issue may result in customer dissatisfaction and financial loss
 
## Target
- Primary: Head of Fraud

# Data Source
Data needed to process NYSE data:
- Card Number	
- Date	
- Amount	
- CBK

Data is sourced from Kaggle (CSV): https://www.kaggle.com/datasets/dmirandaalves/predict-chargeback-frauds-payment 
- The dataset contains 11,127 transactions with attributes such as Card Number, Date, Amount, and CBK (chargeback indicator)
- Some potential limitations in this dataset include:
  - Only one month of data (May 2015)
  - Lack of detail in transaction information


# Stages
- Design
- Development
- Testing
- Analysis


## Dashboard
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

## Create SQL View

# Testing
## Data Quality Tests

# Visualization


# Analysis
1. What is the total number of transactions, and what percentage were marked as chargebacks (fraud)?
2. What is the total monetary value of all transactions? How much of this value is associated with chargebacks?
3. Are there specific time periods (e.g., hours, days, or months) with higher occurrences of chargebacks?
4. Is there a noticeable trend in chargeback frequency over time?
5. Are there customers (e.g., card numbers) with multiple chargebacks? How frequently do they occur?
6. Is there a specific transaction amount range with a higher likelihood of chargebacks?
7. Are there patterns of repeated transactions with identical amounts and short time intervals? Do these correlate with chargebacks?


## 1. What is the total number of transactions, and what percentage were marked as chargebacks (fraud)?
- Total number of transactions: 11,127
- Total number of transactions marked as chargebacks: 572 (5.14%)


## 2. What is the total monetary value of all transactions? How much of this value is associated with chargebacks?
- Total $ in transactions: $1,441,613.25
- Total $ in transactions marked as chargebacks: $104,847.86

## 3. Are there specific time periods (e.g., hours, days) with higher occurrences of chargebacks?

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
- Several customers have multiple chargebacks

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


## 6. Is there a specific transaction amount range with a higher likelihood of chargebacks?
- Certain specific amounts result in a higher likelihood of chargebacks
  - For example, $46.00 has been reported for chargebacks 50 times (the highest of any amount) but 322 transactions for the same amount were not reported for chargebacks
  - Alternatively, all 20 transactions for $250.00 have been reported for chargebacks

- The highest and lowest transactions also have not been reported for chargebacks.
  - However, certain high amounts result in a 100% chargeback rate. For example, there are 5 transactions for $1012.00, all of which have been reported for chargebacks.

## 7. Are there patterns of repeated transactions with identical amounts and short time intervals? Do these correlate with chargebacks?
- Yes, there are clusters of transactions with identical amounts and short time intervals that correlate with chargebacks. For example:
  - On 5/1 between 9:13 and 9:31, 11 transactions for $126.50 were reported for chargebacks. This occurred across two customers' accounts.

- Similarly, certain customers were affected with clusters of transactions for different amounts.
  - For example, on 5/4, cardholder **2487 had 3 transactions in less than 3 minutes for $414.00, $506.0,0 and $460.00 - all reported for chargebacks



# Discovery
Key discoveries from the analysis include the following trends:
- About 5% of all transactions (or nearly $105k) this month were reported for chargebacks
- The afternoon/early evening has the highest total number of chargebacks
- Certain specific dollar-amount transactions are significantly more prone to being reported for chargebacks
- When transactions reported for chargebacks do occur, it's often in clusters, sometimes across several cardholders' accounts
- About every 7 days, there was a day with zero to little transactions reported for chargebacks


# Recommendation
What course of action should we take and why?

## Potential Courses of Action
1. Block High-Risk Transactions: Automatically block transactions for amounts with a 100% chargeback rate.
2. Enhanced Verification: Apply additional verification methods (e.g., 3D Secure, OTP) for amounts with a chargeback rate exceeding 75%.
3. Monitor Clusters: Flag and verify transactions occurring in rapid succession for the same cardholder or similar amounts.
4. Time-Based Monitoring: Focus fraud detection efforts on high-risk periods (e.g., afternoon/evening hours).

## Implementation:

1. Collaborate with the Engineering and Product teams to integrate fraud detection rules into the transaction monitoring system.
2. Conduct regular audits of flagged transactions to refine detection criteria.
3. Educate customers on secure transaction practices.

# Conclusion

This analysis identified key fraud patterns, including high-risk amounts, time clusters, and rapid-succession transactions. Implementing the recommended strategies can help the Head of Fraud lower chargeback rates and streamline the Fraud Team’s efforts.

## Next Steps:
- Add fraud detection rules to the transaction monitoring system.
- Run a one-month pilot to measure the impact.
- Adjust and scale the approach based on the pilot results.

By tackling the core issues right away, this recommendation offers a practical and affordable solution to reduce fraud without disrupting the existing workflows.















