\# E-Commerce Sales \& Profitability Analysis



An end-to-end data analytics project analyzing e-commerce sales, profitability, product performance, discounts, regional performance, and shipping efficiency using Python, MySQL, and Power BI.



**## 📊 Project Overview**



This project analyzes e-commerce sales data to identify the key factors affecting revenue and profitability.



The analysis combines:



\- Exploratory Data Analysis using Python

\- SQL-based business analysis using MySQL

\- Interactive dashboard development using Power BI



The goal is to transform raw sales data into actionable business insights that can help management improve profitability, optimize discounts, identify underperforming products and markets, and understand sales trends.



\---



**## 🎯 Business Objectives**



The project focuses on answering key business questions:



\- How are sales and profit changing over time?

\- Which product categories and sub-categories generate the most profit?

\- Which products generate high sales but low or negative profit?

\- Do higher discounts negatively affect profitability?

\- Which states and regions are underperforming?

\- Which shipping modes provide the best balance between profitability and delivery time?

\- Which months generate the highest sales and profit?

\- Where should management focus its attention to improve profitability?



\---



**## 🛠️ Tools \& Technologies**



| Tool | Purpose |

|------|---------|

| Python | Data cleaning and exploratory data analysis |

| Pandas | Data manipulation and preprocessing |

| NumPy | Numerical analysis |

| Matplotlib | Data visualization |

| Seaborn | Exploratory visualization |

| MySQL | Data storage and SQL analysis |

| Power BI | Interactive dashboard and business intelligence |

| Excel/CSV | Source and intermediate data handling |



\---



**## 📁 Project Structure**



```text

ecommerce-sales-profitability-analysis/

│

├── README.md

│

├── data/

│   └── Orders\_Clean\_UTF8.csv

│

├── python/

│   └── exploratory\_data\_analysis.ipynb

│

├── sql/

│   └── ecommerce\_analysis.sql

│

├── powerbi/

│   └── Ecommerce\_Sales\_Profitability\_Dashboard.pbix

│

├── screenshots/

│   ├── executive-overview.png

│   ├── profitability-analysis.png

│   ├── management-attention.png

│   └── sales-shipping-performance.png

│

└── documentation/

&#x20;   └── SQL\_Findings.md











**📈 Key Performance Indicators**



The final Power BI dashboard tracks the following KPIs:



Total Sales: \~$2.33M

Total Profit: \~$292.30K

Overall Profit Margin: \~12.56%

Total Quantity: \~39K

Total Orders: Distinct order count





**🔍 Key Findings**

1\. Sales \& Profit Growth



Sales declined slightly in 2024 but recovered strongly afterward.



2024 Sales Growth: -4.26%

2025 Sales Growth: 29.79%

2026 Sales Growth: 21.44%



Profit continued to grow throughout the analyzed period.



2024 Profit Growth: 19.96%

2025 Profit Growth: 33.28%

2026 Profit Growth: 16.04%



This indicates strong overall business growth, although the slower profit growth in 2026 suggests that revenue growth should continue to be monitored alongside margins.



2\. Category Performance



Technology generated the highest total sales and profit.



Category	Sales	Profit	Profit Margin

Office Supplies	$731.89K	$126.02K	17.22%

Furniture	$754.75K	$19.73K	2.61%

Technology	$839.89K	$146.54K	17.45%



Key insight: Furniture generates substantial sales but has a significantly lower profit margin than Technology and Office Supplies.



3\. Loss-Making Sub-Categories



Three sub-categories generated an overall loss:



Sub-Category	Sales	Profit	Profit Margin

Tables	$208.02K	-$17.75K	-8.53%

Bookcases	$115.36K	-$3.63K	-3.15%

Supplies	$46.73K	-$1.17K	-2.51%



Key insight: Tables are the most significant profitability concern because they combine relatively high sales with substantial losses.



4\. Discount Impact on Profitability



The analysis indicates a strong relationship between higher discounts and lower profitability.



At higher discount levels, profit margins become negative.



For example:



30% discount → approximately -10.06% margin

40% discount → approximately -19.82% margin

50% discount → approximately -34.80% margin

70% discount → approximately -98.76% margin

80% discount → approximately -180.01% margin



Key insight: Aggressive discounting can significantly erode profitability and should be evaluated carefully, particularly for already low-margin products.



5\. Regional Performance



The West region generated the highest total profit.



Region	Sales	Profit	Profit Margin

West	$739.81K	$110.80K	14.98%

East	$691.83K	$94.88K	13.71%

South	$391.72K	$46.75K	11.93%

Central	$503.17K	$39.87K	7.92%



Key insight: Central has a relatively weak profit margin despite generating over $500K in sales, making it a region worth investigating.



6\. Loss-Making States



Several states/provinces generated negative overall profit.



The largest losses included:



Texas

Ohio

Pennsylvania

Illinois

Colorado

Tennessee



Key insight: These markets require further investigation into product mix, discounting, shipping costs, and customer demand before additional investment.



7\. Product-Level Profitability



The analysis identifies products with above-average sales but zero or negative profit.



This helps management identify products that appear successful from a revenue perspective but may actually be destroying profitability.



Business implication: Revenue alone should not be used to evaluate product performance. Both sales and profit contribution should be considered.



8\. Shipping Performance



Shipping modes were analyzed using:



Total Sales

Total Profit

Quantity

Average Shipping Time

Profit Margin



Standard Class contributed the largest overall profit because of its high sales volume, while First Class achieved the highest profit margin among the shipping modes analyzed.



9\. Seasonal Sales Trends



Sales and profit vary significantly throughout the year.



The strongest sales months include:



September

November

December



December generated the highest sales in the monthly analysis.



Business implication: Higher-demand periods can be used for inventory planning, promotional campaigns, and resource allocation.



**📊 Power BI Dashboard**



The Power BI dashboard is divided into four analytical pages.



1\. Executive Overview



Provides a high-level view of:



Sales and profit trends

Category performance

Regional performance

Key business KPIs

2\. Profitability Analysis



Focuses on:



Sub-category profitability

Profit margins

Discount impact

Loss-making categories

3\. Management Attention



Highlights:



High-sales, low-profit products

Loss-making states/provinces

Geographic profitability

Areas requiring management attention

4\. Sales Trends \& Shipping Performance



Analyzes:



Monthly sales trends

Monthly profit trends

Shipping mode performance

Average shipping time



**🔄 Analysis Workflow**

Raw E-Commerce Data

&#x20;       ↓

Data Cleaning \& Preparation

&#x20;       ↓

Python Exploratory Data Analysis

&#x20;       ↓

Cleaned CSV Dataset

&#x20;       ↓

MySQL Database

&#x20;       ↓

SQL Business Analysis

&#x20;       ↓

Power BI Data Modeling

&#x20;       ↓

Interactive Dashboard

&#x20;       ↓

Business Insights \& Recommendations

💡 Business Recommendations



Based on the analysis:



Review loss-making sub-categories

Investigate Tables, Bookcases, and Supplies.

Evaluate pricing, costs, and discount strategies.

Control excessive discounting

Avoid aggressive discounts where margins are already weak.

Use profitability-based discount thresholds.

Investigate underperforming markets

Analyze loss-making states such as Texas, Ohio, Pennsylvania, and Illinois.

Review regional product mix and discount patterns.

Focus on profitable categories

Technology demonstrates strong sales and profitability.

Identify opportunities to expand high-margin product segments.

Optimize inventory around seasonal demand

Prepare inventory and resources for high-performing months, particularly September, November, and December.

Evaluate products using both revenue and profitability

High sales do not necessarily indicate a successful product.

Products with strong sales but negative profit require management attention.

**📌 Project Highlights**

Analyzed 10,195 e-commerce records

Performed data cleaning and preprocessing using Python

Conducted SQL-based profitability analysis using MySQL

Used window functions such as LAG() for year-over-year analysis

Used CTEs for product-level profitability analysis

Built a multi-page interactive Power BI dashboard

Identified loss-making products, sub-categories, states, and discount levels

Converted analytical findings into business recommendations



**👤 Author**



Harshit Bhatt



Business Analyst | Data Analytics



Skills Demonstrated



Python Pandas NumPy SQL MySQL Power BI Excel Data Visualization Business Analysis Exploratory Data Analysis



📬 Project Purpose



This project was developed as a portfolio project to demonstrate practical skills in data analysis, SQL, business intelligence, data visualization, and translating data into actionable business insights.

