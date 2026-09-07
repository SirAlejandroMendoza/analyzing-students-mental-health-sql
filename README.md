# 📊 Analyzing Students' Mental Health with PostgreSQL

## 📌 Overview
This project explores a dataset from an international university in Japan that surveyed its student body regarding mental health factors. The analysis focuses specifically on international students (`inter_dom = 'Inter'`) to evaluate how their length of stay (`stay` in years) impacts indicators of depression, social connectedness, and acculturative stress.

## 🗂️ Dataset Schema
The dataset `students` contains demographic, academic, and psychological assessment metrics:

| Field Name | Description |
| :--- | :--- |
| `inter_dom` | Student type (`Inter` for international, `Dom` for domestic) |
| `stay` | Current length of stay in years |
| `todep` | Total depression score (PHQ-9 test) |
| `tosc` | Total social connectedness score (SCS test) |
| `toas` | Total acculturative stress score (ASISS test) |
| `japanese_cate` | Japanese language proficiency category |
| `english_cate` | English language proficiency category |
| `academic` | Current academic level (undergraduate / graduate) |
| `age` | Current age of the student |

## 🔍 Key Insights
Using aggregate functions and grouping by length of stay (`stay`), the query reveals:

* **Short-term stay (1 year):** Largest group ($N=95$). Shows a baseline average depression score of $7.48$, social connectedness of $38.11$, and acculturative stress of $72.80$.
* **Medium-term stay (4 years):** Acculturative stress peaks at $87.71$ along with higher depression scores ($8.57$), suggesting critical adjustment phases during mid-degree years.
* **Long-term stay (5+ years):** Smaller sample sizes displaying varied scores as students complete extended programs.

## 🛠️ SQL Techniques Used
* Aggregation Functions (`COUNT`, `AVG`)
* Data Formatting (`ROUND`)
* Filtering & Grouping (`WHERE`, `GROUP BY`, `ORDER BY`)

## 🚀 Repository Structure
* `query.sql`: Main PostgreSQL script used to perform the data analysis.
* `README.md`: Project documentation and findings summary.
