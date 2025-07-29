📘 SQL for Results – /notebooks/README.txt

This folder contains interactive Jupyter notebooks to help you practice and apply SQL using realistic datasets from the book SQL for Results.

────────────────────────────────────────────
📂 Notebooks Included:

✅ load_csvs_to_sqlite.ipynb

Loads CSV files from /datasets/ into a local SQLite database (sample.db).

Run this notebook first before running any SQL queries.

🧠 sql-learning.ipynb

A guided SQL learning notebook covering:

SELECT statements

Filtering with WHERE

Sorting and Aliasing

Aggregations (GROUP BY, SUM, COUNT)

JOIN operations

Subqueries and CASE logic

📊 project_walkthroughs.ipynb

Hands-on exercises and full solutions from book chapters, including:

Segmentation & user profiling

Funnel analysis

Revenue analysis

A/B testing

KPIs & business questions

────────────────────────────────────────────
⚙️ Environment Setup:

To run these notebooks, install the required Python packages:

bash
Copy
Edit
pip install ipython-sql pandas sqlalchemy
If you don’t have Jupyter installed:

bash
Copy
Edit
pip install notebook
────────────────────────────────────────────
🚀 How to Use:

Launch Jupyter:

bash
Copy
Edit
jupyter notebook
Run load_csvs_to_sqlite.ipynb
→ This loads all CSV files from the /datasets/ folder
→ Creates sample.db SQLite database with 5 tables

Explore:

Use sql-learning.ipynb for concept-based SQL practice

Use project_walkthroughs.ipynb for real-world analytics use cases

────────────────────────────────────────────
📌 Notes:

Data is loaded from the /datasets/ folder

All notebooks use the same sample.db SQLite database

SQL code is run inline using %sql magic in Jupyter

Beginner-friendly: You can modify queries and rerun cells anytime

Need updated data? Just re-run load_csvs_to_sqlite.ipynb

────────────────────────────────────────────
Happy querying! 🧪📊

