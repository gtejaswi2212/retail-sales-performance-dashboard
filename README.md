# 🛍️ Retail Sales Performance Dashboard  

**Tools:** Tableau, Excel, SQL  
**Dataset:** [Superstore Dataset (Kaggle)](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)  

---

## 📊 Overview  
This project presents an interactive **Retail Sales Performance Dashboard** built in **Tableau** using the *Superstore* dataset.  
It provides executives and analysts with actionable insights into **revenue growth, profit margins, discounts, and customer retention** across regions and product categories.  

---

## 🧩 Objectives  
- Integrate multiple data sources (sales, marketing, and inventory) using **SQL joins** and **Excel preprocessing**.  
- Build **multi-page Tableau dashboards** visualizing sales KPIs and customer metrics.  
- Deliver **trend forecasting and seasonality insights** for better pricing and product planning.  

---

## 📈 Key Insights  
- 📦 **Sales Growth:** The **West region** consistently drives the highest revenue.  
- 💰 **Profit Margins:** **Office Supplies** and **Technology** categories generate the best margins.  
- 🗓️ **Seasonality:** Sales show strong **Q4 peaks** linked to holiday demand.  
- 👥 **Customer Retention:** The **Consumer segment** contributes the largest share of total sales.  

---

## 🧠 Dashboard Features  
| Feature | Description |
|----------|-------------|
| **KPIs Overview** | Displays Total Sales, Total Profit, Avg. Discount, and Total Quantity Sold |
| **Sales by Region** | Bar chart comparing revenue and profit across regions |
| **Profit by Category** | Category-level profitability insights |
| **Monthly Sales Trend** | Line chart tracking sales trends over time |
| **Interactive Filters** | Allows users to filter by Region, Category, or Segment |

---

## 🛠️ Tools & Technologies  
- **Tableau Public:** Interactive data visualization and dashboard creation  
- **MySQL / Excel:** Data cleaning and preparation  
- **SQL:** Joins, aggregations, and KPI metric calculations  
- **GitHub:** Version control and documentation  

---

## 🧮 Dataset Information  
Source: [Superstore Dataset – Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)  
This dataset includes information on orders, customers, regions, categories, sales, profit, and discounts from a fictional retail company.  

| Column | Description |
|---------|-------------|
| Order ID | Unique identifier for each order |
| Order Date | Date when the order was placed |
| Ship Mode | Shipping method used |
| Customer Name | Name of the customer |
| Segment | Customer segment (Consumer, Corporate, Home Office) |
| Country, City, State, Region | Geographic attributes |
| Product Category / Sub-Category | Product classifications |
| Sales, Quantity, Discount, Profit | Transaction metrics |

---

## 🧭 Project Workflow  
1. **Data Cleaning:**  
   - Removed nulls and duplicates in Excel.  
   - Converted text fields like Sales and Profit into numeric types for Tableau.  

2. **SQL Integration & Transformation:**  
   - Loaded CSV into MySQL using `LOAD DATA LOCAL INFILE`.  
   - Used SQL joins and aggregations to prepare clean analytical tables.  

3. **Dashboard Development in Tableau:**  
   - Created KPI cards for Total Sales, Profit, Discount, and Quantity.  
   - Designed trend, region, and category visualizations with filters.  

4. **Publishing:**  
   - Published dashboard to **Tableau Public**.  
   - Uploaded `.twbx`, `.sql`, data, and documentation to **GitHub**.  

---

## 🧑‍💻 SQL Data Preparation  

SQL scripts were used to:
- Aggregate total sales, profit, and discounts across dimensions.  
- Prepare region, category, and time-based summary tables for Tableau.  
- Perform data validation and transformation for accurate visualization.  

All SQL queries and database dumps are included in the `/sql` folder for transparency and reproducibility.  

---


## 🌐 View Live Dashboard  
🔗 [View on Tableau Public](https://public.tableau.com/views/RetailSalesPerformanceDashboard_17618767413700/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## 💡 Future Enhancements  
- Automate data refresh using Tableau Public Extract Schedules.  
- Integrate Python scripts for sales forecasting and anomaly detection.  
- Add geographic heat maps for state-wise sales contribution.  

---

## 👤 Author  
**Tejaswi Ganji**  
📧 [Email](mailto:tejaswi.ganji2000@gmail.com) | 🌐 [LinkedIn](https://linkedin.com/in/gtejaswi2212) | 💻 [GitHub](https://github.com/gtejaswi2212)  

---

⭐ **If you found this project insightful, give it a star on GitHub!**

## 📁 Folder Structure  

├── data/
│ └── Retail_Sales_Clean.csv # Cleaned dataset from Kaggle
│
├── sql/  
│ └── retail_dashboard_dump.sql # MySQL database export and # SQL scripts for aggregation & metrics
│
├── tableau/
│ └── Retail_Sales_Performance_Dashboard.twbx # Packaged Tableau workbook
│
├── images/
│ ├── dashboard_overview.png # Full dashboard preview
│
└── README.md # Project documentation (this file)


