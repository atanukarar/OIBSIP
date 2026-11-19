# Task 4 — SMS Spam Detection with Machine Learning

**Track:** Data Science | **Intern:** Atanu Karar  
**Internship:** Oasis Infobyte (OIBSIP)

---

## 📧 Objective

Build a machine learning model to classify SMS messages as **spam** or **ham (not spam)**  
using NLP techniques — TF-IDF vectorisation + multiple classifiers.

> **Note:** While the task description references email spam, the standard UCI SMS Spam Collection  
> corpus (5,574 labelled SMS messages) is used as the benchmark dataset — noted for evaluators.

---

## 📂 Files

| File | Description |
|------|-------------|
| `Task_4_SMS_Spam_Detection.ipynb` | Main Jupyter Notebook (EDA + NLP + Model Training + Evaluation) |
| `screenshots/` | Output plots, confusion matrices, word-weight charts |
| `README.md` | This file |

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python 3.x | Core language |
| Pandas / NumPy | Data loading & manipulation |
| Matplotlib / Seaborn | Visualisation |
| Scikit-learn | TF-IDF, ML models, pipelines, evaluation |
| Requests / zipfile | Auto-download dataset from UCI |
| Jupyter Notebook | Development environment |

---

## 📊 Dataset

- **Source:** [UCI SMS Spam Collection](https://archive.ics.uci.edu/ml/datasets/sms+spam+collection)
- **Downloaded automatically** at first run (no manual download needed)
- **Size:** 5,572 labelled SMS messages
- **Labels:** `ham` (4,825) | `spam` (747) — imbalanced dataset

---

## 🔍 Approach

1. **Data Loading** — Auto-download & parse UCI SMS dataset
2. **EDA** — Class distribution, message length analysis, label imbalance
3. **Text Preprocessing** — Lowercasing, punctuation removal, stopword stripping
4. **Feature Extraction** — TF-IDF Vectorizer (unigrams + bigrams)
5. **Models trained (via sklearn Pipeline):**
   - Multinomial Naive Bayes
   - Logistic Regression
6. **Evaluation** — Accuracy, Precision, Recall, F1 (spam class priority), Confusion Matrix
7. **Model Selection** — Best model chosen by **spam F1**, recall as tie-breaker
8. **Custom Prediction** — Predict any new message live in notebook

---

## 📈 Results

| Model | Accuracy | Spam Precision | Spam Recall | Spam F1 |
|-------|----------|---------------|-------------|---------|
| Naive Bayes | ~98% | ~99% | ~89% | ~94% |
| Logistic Regression | ~98% | ~97% | ~94% | ~95% ✅ |

> **Best model:** Logistic Regression — highest spam F1 score (~95%)

### Sample Prediction
```
Input:  "Congratulations! You have won a free prize. Call now to claim."
Output: SPAM (confidence: 98.25%)
```

---

## ▶️ How to Run

```bash
# 1. Clone the repo
git clone https://github.com/atanukarar/OIBSIP.git
cd OIBSIP/DataScience-Task4-SMSSpamDetection

# 2. Install dependencies
pip install pandas numpy matplotlib seaborn scikit-learn requests jupyter

# 3. Launch notebook (dataset auto-downloads on first run)
jupyter notebook Task_4_SMS_Spam_Detection.ipynb
```

---

## 🎥 Demo Video

> *(LinkedIn demo video link — add after recording)*

---

## 🏷️ Tags
`#oasisinfobyte` `#datascience` `#machinelearning` `#nlp` `#spamdetection` `#python` `#internship`
