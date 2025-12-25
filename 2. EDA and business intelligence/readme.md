## Dataset Description

The dataset used for this task is a **retail store sales dataset** containing transactional-level records. Each row represents a single customer transaction, capturing information related to products, pricing, quantity, payment method, sales channel, and transaction date.

### Dataset Summary
- **Number of records:** 11,362 (after data cleaning)
- **Number of columns:** 11
- **Granularity:** Transaction-level data

### Key Columns
- `Transaction ID`: Unique identifier for each transaction  
- `Category`: Product category  
- `Item`: Purchased item  
- `Price Per Unit`: Price of a single unit  
- `Quantity`: Number of units purchased  
- `Total Spent`: Total transaction value  
- `Payment Method`: Mode of payment used  
- `Location`: Sales channel (Online / In-Store)  
- `Transaction Date`: Date of transaction  
- `Discount Applied`: Indicates whether a discount was applied  

## Step 1: Descriptive Statistics & Univariate Analysis

This step focuses on **descriptive statistics and univariate analysis** to understand the individual characteristics of each variable in the dataset. The objective is to examine distributions, central tendencies, and variability before exploring relationships between variables.

---

### Descriptive Statistics (Numerical Variables)

Descriptive statistics were computed for key numerical variables: `Price Per Unit`, `Quantity`, and `Total Spent`.

- **Price Per Unit**
  - Displays a moderate spread, indicating a mix of low-priced and higher-priced products.
  - The variation in unit prices suggests the presence of multiple product categories with different pricing strategies.

- **Quantity**
  - Quantity values are discrete and confined to a relatively small range.
  - Most transactions involve a limited number of items, which is typical in retail purchase behavior.
  - The distribution indicates consistency in customer buying patterns rather than extreme bulk purchases.

- **Total Spent**
  - The distribution of total spending is right-skewed.
  - Most transactions fall within a lower spending range, with fewer high-value transactions.
  - This suggests that revenue is driven by a high volume of moderate-value transactions rather than frequent large purchases.

Overall, descriptive statistics indicate stable transactional behavior with occasional high-value outliers.

---

### Univariate Analysis (Categorical Variables)

Univariate analysis was performed on categorical variables using frequency counts and visualizations.

- **Category**
  - Product categories are unevenly distributed.
  - Certain categories contribute a significantly higher number of transactions, indicating strong customer demand in specific product groups.

- **Payment Method**
  - Digital payment methods are more frequently used compared to cash.
  - This reflects a customer preference for convenient and cashless transaction options.

  ![Payment Method](/2.%20EDA%20and%20business%20intelligence/assets/payment_method.png)

- **Location (Sales Channel)**
  - Transactions are nearly evenly split between `Online` and `In-Store` channels.
  - The balanced distribution suggests that both channels are equally important to overall business performance.


---

### Key Observations

- The dataset exhibits **stable retail behavior** with predictable transaction sizes.
- Customer purchasing patterns are consistent, with limited extreme values.
- Certain categories and payment methods dominate transaction frequency.
- Both online and in-store sales channels contribute almost equally to transaction volume.

---

### Conclusion

Descriptive statistics and univariate analysis provide a foundational understanding of the dataset by highlighting spending behavior, purchase volume, and customer preferences. These insights establish a baseline for subsequent multivariate analysis and business intelligence exploration.

## Step 2: SQL-Based Business Analysis

In this step, **SQL was used as the primary tool for business intelligence analysis** to answer key business questions derived from the retail sales dataset. The cleaned dataset was imported into **MySQL**, and structured queries were executed to extract actionable insights related to revenue performance, customer behavior, sales channels, and transaction trends.

The purpose of this step is to demonstrate the ability to translate raw transactional data into **business-relevant insights using SQL**, a critical skill in real-world analytics workflows.

---

### Business Questions Addressed

The following business questions were formulated and answered using SQL queries:

1. **Which product categories generate the highest total revenue?**  
   *Helps identify top-performing categories and prioritize inventory and marketing efforts.*

2. **How does total revenue vary over time (monthly sales trend)?**  
   *Helps understand seasonality, growth patterns, and demand fluctuations.*

3. **Which payment methods are most frequently used by customers?**  
   *Supports decisions related to payment infrastructure and customer convenience.*

4. **How does revenue differ between Online and In-Store sales channels?**  
   *Enables comparison of channel performance and strategic investment decisions.*

5. **What is the average order value across different sales channels?**  
   *Helps identify channels that generate higher-value transactions.*

6. **Which product categories have the highest total quantity sold?**  
   *Provides insight into customer demand and supports inventory planning.*

7. **Do discounted transactions result in higher average spending?**  
   *Evaluates the effectiveness of discount strategies on customer spending behavior.*

---

### Summary of SQL Insights

- A small number of product categories contribute a disproportionately large share of total revenue.
- Monthly sales analysis reveals clear temporal patterns in transaction volume and revenue.
- Digital payment methods dominate transaction counts, indicating a shift toward cashless payments.
- Online and in-store channels contribute nearly equally to total transactions, with differences observed in average order value.
- Discounted transactions tend to show higher average spending, suggesting that discounts can positively influence purchase size.

---

### Outcome

SQL-based analysis enabled efficient exploration of large transactional data and provided **clear, quantifiable answers to business-driven questions**. The insights obtained in this step directly informed the multivariate analysis and the design of the dashboard mock-up in subsequent steps.

## Step 3: Multivariate Analysis & Correlation

This step focuses on **multivariate analysis**, where relationships between multiple variables are examined simultaneously. The objective is to identify key drivers of transaction value, understand interactions between pricing, quantity, and revenue, and uncover patterns that are not visible through univariate analysis alone.

---

### Relationship Analysis Between Numerical Variables

Multivariate relationships were explored using scatter plots and correlation analysis for key numerical variables: `Price Per Unit`, `Quantity`, and `Total Spent`.

- **Quantity vs Total Spent**
  - A strong positive relationship is observed between quantity purchased and total transaction value.
  - Transactions with higher quantities consistently result in higher total spending.
  - This indicates that transaction value is primarily **volume-driven** rather than price-driven.

- **Price Per Unit vs Quantity**
  - The relationship between unit price and quantity purchased is relatively weak.
  - Slight indications of a negative relationship suggest that higher-priced items may be purchased in smaller quantities, though the effect is not pronounced.

---

### Correlation Analysis

Correlation coefficients were calculated for numerical variables to quantify the strength of relationships.

- `Total Spent` shows a **strong positive correlation** with `Quantity`.
- `Total Spent` has a **moderate correlation** with `Price Per Unit`.
- `Price Per Unit` and `Quantity` exhibit a weak relationship.

![Correlation Heatmap](/2.%20EDA%20and%20business%20intelligence/assets/correlation.png)

These results reinforce the observation that **purchase volume is the dominant factor influencing transaction value**.

---

### Category and Channel-Level Multivariate Insights

Multivariate aggregation was performed across categorical dimensions to understand combined effects:

- **Payment Method vs Revenue**
    - Revenue contribution differs across payment methods, indicating variation in customer spending behavior based on the chosen mode of payment.
    - Digital payment methods tend to contribute a higher share of total revenue compared to cash-based transactions.
    - This suggests that customers using digital or card-based payment options may be more inclined toward higher-value purchases.

- **Category vs Revenue**
  - Revenue distribution across categories is uneven, with a limited number of categories contributing a significant portion of total revenue.
  - This highlights opportunities for category-level optimization in inventory planning and promotions.
  ![Category vs Revenue](/2.%20EDA%20and%20business%20intelligence/assets/category_vs_revenue.png)

- **Location (Sales Channel) vs Transaction Behavior**
  - Although transaction counts between online and in-store channels are nearly balanced, differences emerge in average quantity and transaction value.
  - This suggests distinct purchasing behaviors across sales channels, which may require differentiated strategies.

- **Discount Impact Analysis**
  - Transactions involving discounts tend to exhibit higher average spending compared to non-discounted transactions.
  - This indicates that discounts may encourage customers to increase purchase size rather than merely shifting purchase timing.

---

### Key Insights from Multivariate Analysis

- Transaction value is strongly influenced by quantity purchased.
- Pricing plays a secondary role compared to volume in determining total spending.
- A small number of categories act as primary revenue drivers.
- Sales channels exhibit different customer purchase patterns.
- Discounts appear to positively impact average transaction value.

---

### Conclusion

Multivariate analysis provides deeper insight into the drivers of revenue and customer behavior by examining interactions across multiple variables. The findings from this step directly inform the selection of key performance indicators (KPIs) and visual elements used in the dashboard mock-up.

## Step 4: Dashboard Mock-up

The final step of Task 2 focuses on translating analytical insights into a **static dashboard mock-up** designed for business stakeholders. The purpose of this dashboard is to provide a high-level overview of sales performance, customer behavior, and key revenue drivers in a concise and visually intuitive format.

The dashboard mock-up is not interactive and is intended to demonstrate **dashboard design thinking**, KPI selection, and insight prioritization rather than tool-specific implementation.

---

### Dashboard Objective

The objective of the dashboard is to:
- Summarize overall sales performance using key metrics.
- Highlight major revenue drivers across categories, channels, and payment methods.
- Present trends and behavioral patterns that support data-driven decision-making.

---

### Key Performance Indicators (KPIs)

The following KPIs were selected based on insights derived from EDA and SQL analysis:

- **Total Revenue** – Overall revenue generated from all transactions.
- **Total Transactions** – Number of completed sales transactions.
- **Average Order Value (AOV)** – Average revenue per transaction.
- **Top Revenue Category** – Product category contributing the highest revenue.
- **Preferred Sales Channel** – Channel with the highest transaction volume.
- **Dominant Payment Method** – Most frequently used payment method.

---

### Visual Components Included

The dashboard mock-up includes the following visual elements:

- **Monthly Sales Trend (Line Chart)**  
  Displays revenue trends over time to identify growth and seasonality.

- **Revenue by Category (Bar Chart)**  
  Highlights product categories that contribute most to total revenue.

- **Sales Channel Distribution (Pie Chart)**  
  Compares transaction volume between online and in-store channels.

- **Payment Method vs Revenue (Bar Chart)**  
  Shows revenue contribution across different payment methods.

- **Quantity vs Total Spent (Scatter Plot)**  
  Illustrates the relationship between purchase volume and transaction value.
---
![Dashboard Mock-up](/2.%20EDA%20and%20business%20intelligence/assets/Dashboard_mockup.png)

**Static dashboard mock-up summarizing key KPIs, revenue trends, and customer behavior insights.**
---

### Business Value

The dashboard enables stakeholders to:
- Quickly assess overall business performance.
- Identify high-performing categories and channels.
- Understand customer purchasing behavior and payment preferences.
- Support strategic decisions related to pricing, promotions, and channel optimization.

---

### Outcome

The static dashboard mock-up serves as a foundation for future development of an interactive business intelligence dashboard in subsequent tasks. It effectively consolidates insights generated throughout Task 2 into a single, decision-focused view.


## Overall Conclusion

This task demonstrated an end-to-end analytical workflow by transforming retail sales data into actionable business insights through descriptive analysis, SQL-based exploration, multivariate analysis, and dashboard design.

Univariate analysis established a foundational understanding of transaction behavior, pricing patterns, and customer preferences. SQL-based business analysis enabled structured exploration of revenue performance, sales channels, payment methods, and temporal trends. Multivariate analysis further revealed key drivers of transaction value, highlighting the dominant influence of purchase quantity, category-level revenue concentration, and the impact of sales channels and payment methods on customer spending behavior.

The insights generated across these stages were consolidated into a static dashboard mock-up designed for business stakeholders. The dashboard provides a concise overview of performance metrics and key trends, supporting informed decision-making related to inventory planning, pricing strategy, channel optimization, and promotional effectiveness.

Overall, this task reinforces the importance of combining data preparation, analytical reasoning, and effective visualization to deliver insights that are both technically sound and business-relevant.
