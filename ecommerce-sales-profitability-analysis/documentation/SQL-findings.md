# SQL Analysis Findings

## 1. Yearly Sales & Profit Performance

The analysis shows a strong overall upward trend in both sales and profit.

| Year | Sales | Profit | Sales Growth | Profit Growth |
|------|------:|-------:|-------------:|--------------:|
| 2023 | $494.04K | $51.68K | - | - |
| 2024 | $472.99K | $62.02K | -4.26% | 19.96% |
| 2025 | $613.93K | $82.66K | 29.79% | 33.28% |
| 2026 | $745.57K | $95.93K | 21.44% | 16.04% |

### Insight

Sales declined slightly in 2024 but recovered strongly in 2025 and 2026. Profit increased every year, although profit growth slowed in 2026 compared with 2025.

---

## 2. Category Performance

| Category | Sales | Profit | Profit Margin |
|----------|------:|-------:|--------------:|
| Office Supplies | $731.89K | $126.02K | 17.22% |
| Furniture | $754.75K | $19.73K | 2.61% |
| Technology | $839.89K | $146.54K | 17.45% |

### Insight

Technology generated the highest sales and profit and had the highest profit margin among the three categories.

Furniture generated substantial sales but had a significantly lower profit margin, making it an important profitability area to investigate.

---

## 3. Loss-Making Sub-Categories

| Sub-Category | Sales | Profit | Profit Margin |
|--------------|------:|-------:|--------------:|
| Tables | $208.02K | -$17.75K | -8.53% |
| Bookcases | $115.36K | -$3.63K | -3.15% |
| Supplies | $46.73K | -$1.17K | -2.51% |

### Insight

Tables are the largest profitability concern because they generate relatively high sales while producing the largest loss.

Bookcases and Supplies also generate negative overall profit and require further investigation.

---

## 4. Discount & Profitability

The analysis shows that higher discount levels are generally associated with lower profit margins.

| Discount | Profit Margin |
|----------|--------------:|
| 0% | 29.56% |
| 10% | 16.56% |
| 15% | 5.15% |
| 20% | 11.77% |
| 30% | -10.06% |
| 40% | -19.82% |
| 50% | -34.80% |
| 60% | -86.75% |
| 70% | -98.76% |
| 80% | -180.01% |

### Insight

Profitability becomes negative at higher discount levels.

This suggests that aggressive discounting can significantly reduce or eliminate profit, especially for products with already low margins.

---

## 5. Product-Level Profitability

Products were analyzed to identify items that generate above-average sales but zero or negative profit.

This analysis helps identify products that appear successful based on revenue but may be negatively affecting overall profitability.

### Insight

Revenue alone should not be used to evaluate product performance. Management should consider both sales volume and profit contribution when evaluating products.

---

## 6. Regional Performance

| Region | Sales | Profit | Profit Margin |
|--------|------:|-------:|--------------:|
| West | $739.81K | $110.80K | 14.98% |
| East | $691.83K | $94.88K | 13.71% |
| South | $391.72K | $46.75K | 11.93% |
| Central | $503.17K | $39.87K | 7.92% |

### Insight

The West region generated the highest total profit and profit margin.

Central generated more than $500K in sales but had the lowest regional profit margin, making it an important region for further investigation.

---

## 7. Loss-Making States / Provinces

The analysis identified multiple states and provinces with negative overall profit.

Major loss-making markets include:

- Texas
- Ohio
- Pennsylvania
- Illinois
- Colorado
- Tennessee
- North Carolina
- Arizona
- Florida
- Oregon

### Insight

These markets should be investigated further by analyzing product mix, discounting, shipping costs, and customer demand.

---

## 8. Shipping Performance

Shipping modes were analyzed using:

- Total Sales
- Total Profit
- Total Quantity
- Average Shipping Time
- Profit Margin

### Insight

Standard Class generated the largest total profit because of its high sales volume.

First Class achieved the highest profit margin among the shipping modes analyzed.

This indicates that shipping performance should be evaluated using both profitability and delivery speed rather than focusing on a single metric.

---

## 9. Seasonal Sales Performance

The analysis shows noticeable variation in sales and profit throughout the year.

The strongest sales months include:

- September
- November
- December

December generated the highest monthly sales.

### Insight

The business can use these seasonal patterns for:

- Inventory planning
- Promotional campaigns
- Staffing and resource allocation
- Sales forecasting

---

# Overall Business Insights

The SQL analysis highlights several important areas for management attention:

1. **Technology is the strongest major category** in terms of sales and profitability.
2. **Furniture requires profitability improvement** despite its high sales volume.
3. **Tables, Bookcases, and Supplies generate losses** and should be investigated.
4. **Higher discount levels can significantly reduce profitability.**
5. **Central has the weakest regional profit margin.**
6. **Several states generate overall losses** and require market-level investigation.
7. **High-sales, low-profit products should be reviewed** rather than judging performance using sales alone.
8. **September, November, and December show strong sales activity**, making them important periods for planning.
9. **Standard Class contributes the largest total profit**, while First Class has the highest profit margin.

---

# Business Recommendations

Based on the analysis:

- Review pricing and cost structures for loss-making sub-categories.
- Establish more controlled discounting strategies.
- Investigate high-sales products with negative profitability.
- Analyze loss-making states for product mix and discount issues.
- Improve profitability in the Central region.
- Focus expansion efforts on high-margin categories and products.
- Plan inventory and resources around high-demand months.
- Evaluate shipping decisions using both delivery time and profitability.