# 🛒 Lakehouse Ecommerce Project

→ This project demonstrates a complete end-to-end Data Engineering pipeline built using the Lakehouse architecture.

→ Starting from a raw ecommerce dataset downloaded from Kaggle, the data is ingested into Amazon S3, crawled with AWS Glue, and queried through Amazon Athena.

→ Transformations are performed using dbt, where data is modeled into staging, dimension, and fact tables following a star schema.

→ Tests and snapshots are implemented to ensure data quality and track changes.

→ Insights such as top sales by country and top customers by revenue are visualized using Amazon QuickSight.

→ The entire project is version-controlled and documented on GitHub.

---

## 🔗 Pipeline Overview

→ **Kaggle** (raw dataset)  
→ **Amazon S3** (data lake storage)  
→ **AWS Glue Crawler** (schema inference)  
→ **Amazon Athena** (SQL querying)  
→ **dbt** (transformations, tests, star schema)  
→ **Amazon QuickSight** (dashboards)  
→ **Git + GitHub** (version control)

---

## 🧱 Folder Structure

```bash
lakehouse_project1/
├── analyses/              # dbt analysis files
├── macros/                # dbt macros
├── models/                # staging, dimensions, facts
├── seeds/                 # static reference CSVs
├── snapshots/             # historical snapshots
├── tests/                 # dbt tests
├── dbt_project.yml        # dbt config
├── .gitignore             
├── README.md
data/
└── ecommerce_orders.csv   # raw dataset from Kaggle

logs/
├── dbt.log
quicksight-img1.png    # dashboard screenshot
