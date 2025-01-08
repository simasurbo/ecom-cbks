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
Design
Development
Testing
Analysis


Dashboard
What is the total number of transactions, and what percentage were marked as chargebacks (fraud)?
What is the total monetary value of all transactions? How much of this value is associated with chargebacks?
Are there specific time periods (e.g., hours, days, or months) with a higher occurrence of chargebacks?
Is there a noticeable trend in chargeback frequency over time?
Are there customers (e.g., card numbers) with multiple chargebacks? How frequently do they occur?
Is there a specific transaction amount range that has a higher likelihood of chargebacks?
Are there patterns of repeated transactions with identical amounts and short time intervals? Do these correlate with chargebacks?
Tools
Google Sheets - Exploring the Data
SQL - Cleaning, testing and analyzing the data
PowerBI - Visualizing the data via interactive dashboards
GitHub - Hosting the project documentation and version control

Development

Pseudocode
Get the data
Explore the data in Excel
Load the data into SQL Server
Clean the data with SQL
Test the data with SQL
Visualize the data in Power BI
Generate the findings based on the insights
Write the documentation + commentary
Publish the data to GitHub Pages

Data Exploration
4 columns contain the necessary data for this analysis. There is no need to contact the client for additional data.
The second column contains the ticker symbol.
We have more data than we need, so at least one of these columns would need to be removed
Data Cleaning
The goal is to refine the dataset to ensure it is structured and ready for analysis. The cleaned data should meet the following criteria and constraints:

Only relevant columns should be retained.
All data types should be appropriate for the contents of each column.
No column should contain null values, indicating complete data for all records.
Property	Description
Number of rows	100
Number of columns	4


Data Processing

Create SQL View

Testing
Data Quality Tests

Visualization


