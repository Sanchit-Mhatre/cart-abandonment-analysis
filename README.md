# 🛒 E-Commerce Cart Abandonment & Funnel Analysis

> **51.6% of customers abandoned their cart — costing the business ₹7.1 Crore in 6 months.**  
> This project uncovers why, and maps a data-driven path to recover +₹1.5 Crore/year.

---

## 📊 Dashboard Preview

![Dashboard Overview](https://github.com/Sanchit-Mhatre/cart-abandonment-analysis/blob/main/PBi%20DashBoard/src/Screenshot%202026-06-02%20215244.png)
![Category Analysis](https://github.com/Sanchit-Mhatre/cart-abandonment-analysis/blob/main/PBi%20DashBoard/src/Screenshot%202026-06-02%20215244.png)

---

## 🧩 Project Overview

| Detail | Value |
|---|---|
| **Tools Used** | MySQL, Power BI, Excel |
| **Dataset Size** | 29,708 events |
| **Time Period** | 6 Months |
| **Brands Analysed** | 18 |
| **DAX Measures** | 13 |
| **Dashboard Visuals** | 5 |

---

## 💡 Key Insights

- 🔴 **51.6% cart abandonment rate** — only 48.45% of users who added to cart completed purchase
- 💸 **₹7.1 Crore lost** in 6 months from abandoned carts
- 📦 **₹24,300 average order value** — premium brands driving high cart value but low conversion
- 📅 **January 2024** was the worst month — ₹1.32 Cr lost (post-holiday budget fatigue)
- 📅 **February 2024** was the best month — Valentine's Day gifting effect drove faster decisions
- 📉 Abandonment rate **consistent at 65–70% every month** — structural checkout problem, not seasonal

### Brand-wise Abandonment

| Brand | Abandonment Rate | Note |
|---|---|---|
| Sony | 76.2% | Highest — price shock without EMI |
| Bose | 72.0% | Premium price barrier |
| Apple | 68.0% | Price-sensitive segment |
| Huawei | 64.7% | **Best performer** — page structure to replicate |

---

## 🔧 Technical Challenges Solved

**1. Funnel query showing 157% conversion rate**  
→ Traced to a `COUNT(DISTINCT CASE WHEN)` bracket placement error. One-line fix restored correct funnel logic.

**2. Accidental bulk deletion of rows in Excel**  
→ Used `Alt + ;` shortcut to select only visible cells before deleting — now a permanent part of my workflow.

**3. Missing `event_month` column in SQL**  
→ Engineered on the fly using `DATE_FORMAT(event_time, '%Y-%m')` via `ALTER TABLE`, unblocking the entire monthly trend analysis.

**4. Power BI showing 68% vs DAX showing 51.6% — same data**  
→ Identified the difference: session-based vs user-based counting. Both are valid metrics with different business meanings.

---


## 🛠️ How to Run

### SQL
1. Import `https://github.com/Sanchit-Mhatre/cart-abandonment-analysis/tree/main/Dataset` into MySQL
2. Run scripts in `sql/` folder in numbered order (`01` → `04`)

### Power BI
1. Open `dashboard/Ecom_cart_abandonment.pbix` in Power BI Desktop
2. Update the data source connection to your local MySQL instance
3. Refresh the dataset

---

## 📌 5 Business Actions | Combined Impact: +₹1.5 Crore/year

| # | Action | Impact |
|---|---|---|
| 1️⃣ | **Cart Recovery Sequence** — Email at 1hr + 5% discount at 24hr + WhatsApp (98% open rate) | +₹71 lakh/year |
| 2️⃣ | **No-Cost EMI for Sony, Bose, Apple** — Show ₹1,666/month upfront at checkout, not buried | 15% drop in premium abandonment |
| 3️⃣ | **Fix January Proactively** — New Year Sale + EMI push in first 2 weeks | Recover ₹1.32 Cr lost month |
| 4️⃣ | **Simplify Checkout** — 3 steps max, guest checkout, UPI one-click, 30-day saved carts | 51.6% → 40% abandonment |
| 5️⃣ | **Replicate Huawei's page structure** — Better specs, reviews, return policy across Sony, Puma, Nike | Structural lift across brands |



---

## 👤

**Sanchit Mhatre**  
🔗 [LinkedIn](https://www.linkedin.com/in/your-profile)  
💻 [GitHub](https://github.com/Sanchit-Mhatre)

