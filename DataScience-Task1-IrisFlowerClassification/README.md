# Task 1 — Iris Flower Classification

**Track:** Data Science | **Intern:** Atanu Karar  
**Internship:** Oasis Infobyte (OIBSIP)

---

## 🌸 Objective

Train a machine learning model to classify Iris flowers into three species —  
**Setosa**, **Versicolor**, and **Virginica** — based on sepal and petal measurements.

---

## 📂 Files

| File | Description |
|------|-------------|
| `Task_1_Iris_Flower_Classification.ipynb` | Main Jupyter Notebook (EDA + Model Training + Evaluation) |
| `screenshots/` | Output plots and confusion matrix screenshots |
| `README.md` | This file |

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python 3.x | Core language |
| Pandas | Data loading & manipulation |
| NumPy | Numerical operations |
| Matplotlib / Seaborn | Data visualisation |
| Scikit-learn | ML models & evaluation |
| Jupyter Notebook | Development environment |

---

## 📊 Dataset

- **Source:** [UCI ML Repository — Iris Dataset](https://archive.ics.uci.edu/ml/datasets/iris) (also available via `sklearn.datasets.load_iris`)
- **Features:** `sepal_length`, `sepal_width`, `petal_length`, `petal_width`
- **Target:** `species` (Setosa / Versicolor / Virginica)
- **Rows:** 150 (50 per class) — balanced, no missing values

---

## 🔍 Approach

1. **EDA** — Distribution plots, pair plots, correlation heatmap
2. **Preprocessing** — Train/test split (80/20), feature scaling
3. **Models trained:**
   - Logistic Regression
   - K-Nearest Neighbours (KNN)
   - Decision Tree Classifier
   - Support Vector Machine (SVM)
4. **Evaluation** — Accuracy score, Classification report, Confusion matrix

---

## 📈 Results

| Model | Test Accuracy |
|-------|-------------|
| Logistic Regression | ~96% |
| KNN | ~97% |
| Decision Tree | ~95% |
| SVM | ~98% |

> Best model: **SVM** with ~98% accuracy on the test set.

---

## ▶️ How to Run

```bash
# 1. Clone the repo
git clone https://github.com/atanukarar/OIBSIP.git
cd OIBSIP/DataScience-Task1-IrisFlowerClassification

# 2. Install dependencies
pip install pandas numpy matplotlib seaborn scikit-learn jupyter

# 3. Launch notebook
jupyter notebook Task_1_Iris_Flower_Classification.ipynb
```

---

## 🎥 Demo Video

> *(LinkedIn demo video link — add after recording)*

---

## 🏷️ Tags
`#oasisinfobyte` `#datascience` `#machinelearning` `#python` `#irisclassification` `#internship`
