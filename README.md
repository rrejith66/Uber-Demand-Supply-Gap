🚖 Uber Demand-Supply Gap Analysis
This project aims to identify and analyze the supply-demand gap in Uber ride requests using a real-world dataset. By performing Exploratory Data Analysis (EDA) in Python, along with visualizations and insights, the project uncovers key operational issues and suggests data-driven improvements.

📌 Problem Statement
Ride-hailing platforms like Uber often face service imbalance due to uncoordinated supply and fluctuating demand. This leads to unfulfilled ride requests, customer dissatisfaction, and lost revenue. This project addresses:

When and where does the demand exceed the supply, and what are the operational causes of trip failures?

🎯 Business Objective
The business goal is to:

Identify the root causes of unfulfilled requests

Understand demand and supply patterns over time and locations

Help Uber optimize driver allocation and reduce cancellations

Improve operational efficiency and customer satisfaction

📁 Dataset Description
The dataset contains over 6,500 ride request records, with the following features:

Request id: Unique ID for each ride request

Pickup point: Either City or Airport

Status: Completed, Cancelled, or No Cars Available

Request timestamp and Drop timestamp

Driver id: Present only for completed trips

🧠 EDA Workflow
The notebook follows these major steps:

Data Preprocessing

Parsing date/time formats

Handling missing values

Feature engineering (request_hour, time_slot, day_type)

Exploratory Analysis

Distribution of requests over time

Analysis by status, pickup point, and time slot

Identification of peak hours and supply gaps

Visualization

Bar plots, pie charts, and heatmaps using matplotlib and seaborn

Correlation between demand and driver availability

Key Insights

High demand in Morning and Evening peaks

Airport faced the most supply issues

Over 55% of total requests were not fulfilled

📊 Tools & Libraries
Python 3

Pandas, NumPy

Matplotlib, Seaborn

Jupyter Notebook

📌 Key Insights
The morning (5–9 AM) and evening (5–9 PM) time slots have the highest number of requests.

Most unfulfilled rides at the Airport are due to no cars available, not cancellations.

Strategic driver deployment during peak hours can significantly reduce demand-supply mismatches.
