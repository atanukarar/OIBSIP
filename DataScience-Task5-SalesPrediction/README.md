# Task 5 — Sales Prediction Using Advertising Spend

**Track:** Data Science | **Intern:** Atanu Karar  
**Internship:** Oasis Infobyte (OIBSIP)

---

## 📈 Objective

Predict **sales revenue** from TV, Radio, and Newspaper advertising spend using regression models.  
Understand which advertising channel has the most impact on sales.

> **Note:** Dataset units are the original source dataset units (not Indian rupees).  
> The classic 200-row Advertising dataset is used as the benchmark for this task.

---

## 📂 Files

| File | Description |
|------|-------------|
| `Task_5_Sales_Prediction.ipynb` | Main Jupyter Notebook — fully executed, all outputs embedded |
| `screenshots/` | Charts: scatter plots, residuals, feature importance |
| `README.md` | This file |

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python 3.x | Core language |
| Pandas / NumPy | Data loading & manipulation |
| Matplotlib / Seaborn | Visualisation (scatter, pairplot, residual plots) |
| Scikit-learn | Linear Regression, Random Forest Regressor, evaluation metrics |
| Requests | Auto-download dataset |
| Jupyter Notebook | Development environment |

---

## 📊 Dataset

- **Source:** [Advertising Dataset](https://raw.githubusercontent.com/selva86/datasets/master/Advertising.csv)
- **Downloaded automatically** at first run (no manual download needed)
- **Size:** 200 rows × 4 columns
- **Features:** `TV`, `Radio`, `Newspaper` (advertising spend in thousands)
- **Target:** `Sales` (product units sold in thousands)

---

## 🔍 Approach

1. **Data Loading** — Auto-download CSV, normalise column names
2. **Data Quality** — Check dtypes, nulls, duplicates, descriptive stats
3. **EDA** — Pairplot, correlation heatmap, scatter plots (each channel vs Sales)
4. **Feature Engineering** — Train/test split (80/20), feature matrix `X = [TV, Radio, Newspaper]`
5. **Models trained:**
   - Linear Regression
   - Random Forest Regressor
6. **Evaluation** — MAE, RMSE, R² (lower MAE/RMSE + higher R² = better)
7. **Model Selection** — Best model by lowest held-out RMSE (MAE tie-breaker)
8. **Residual Diagnostics** — Residuals vs predicted scatter + distribution plot
9. **Channel Impact** — Linear coefficients + RF feature importances (bar chart)
10. **Custom Prediction** — Predict sales for a hypothetical ad campaign

---

## 📈 Results

| Model | MAE | RMSE | R² |
|-------|-----|------|----|
| Linear Regression | ~1.26 | ~1.73 | ~0.90 |
| Random Forest | ~0.74 | ~1.09 | ~0.96 ✅ |

> **Best model:** Random Forest Regressor — R² ≈ 0.96 (explains 96% of variance)

### Channel Impact
- **TV** — highest impact (strongest linear & RF importance)
- **Radio** — moderate positive impact
- **Newspaper** — lowest predictive contribution

### Sample Prediction
```
Input Campaign:  TV=$150K, Radio=$25K, Newspaper=$20K
Predicted Sales: ~14.2 (thousand units)
```

---

## 🐛 Bugs Fixed

| Bug | Fix Applied |
|-----|------------|
| `ModuleNotFoundError: matplotlib` | Switched notebook kernel from custom `atanu` env → standard `python3` kernel |
| `HTTPError: 404` on dataset URL | Replaced broken URL with working mirror: `selva86/datasets` on GitHub |
| Column name mismatch (`radio` vs `Radio`) | Added column normalisation step after CSV load |

---

## ▶️ How to Run

```bash
# 1. Clone the repo
git clone https://github.com/atanukarar/OIBSIP.git
cd OIBSIP/DataScience-Task5-SalesPrediction

# 2. Install dependencies
pip install pandas numpy matplotlib seaborn scikit-learn requests jupyter

# 3. Launch notebook (dataset auto-downloads on first run)
jupyter notebook Task_5_Sales_Prediction.ipynb
```

---

## 🎥 Demo Video

> *(LinkedIn demo video link — add after recording)*

---

## 🏷️ Tags
`#oasisinfobyte` `#datascience` `#machinelearning` `#regression` `#salesprediction` `#python` `#internship`
