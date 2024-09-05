# CoreDataEngineers Data Engineering Assignment

Welcome to the **CoreDataEngineers** repository! This repository contains the individual and group assignments for the Data Engineering Bootcamp. You will find detailed explanations, scripts, and solutions related to ETL processes using Bash scripting, PostgreSQL database management, and collaboration using Git. The structure follows professional standards, with well-organized folders and comprehensive documentation.

## Table of Contents

1. [Overview](#overview)
2. [Project Structure](#project-structure)
3. [Individual Assignment](#individual-assignment)
    - [ETL Process](#etl-process)
    - [Moving Files](#moving-files)
    - [PostgreSQL Competitor Analysis](#postgresql-competitor-analysis)
4. [Group Assignment](#group-assignment)
    - [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
5. [How to Run the Project](#how-to-run-the-project)
6. [Version Control](#version-control)
7. [Directory Structure](#directory-structure)
8. [Submission Guidelines](#submission-guidelines)
9. [Authors](#authors)

## Overview

In this assignment, you will demonstrate your ability to work with Bash scripts to handle Extract, Transform, and Load (ETL) processes, move data files between directories, and manage version control using Git. Additionally, you'll interact with a PostgreSQL database for competitor analysis and develop SQL queries to address business problems. The project also includes collaborative work for a group assignment where you perform Exploratory Data Analysis (EDA) on the provided database.

## Project Structure

This repository is divided into multiple directories for clarity and organization. Below is an overview of the project structure:

- **`raw/`**: Contains the raw CSV files extracted during the ETL process.
- **`transformed/`**: Contains the transformed CSV files after performing data cleaning and restructuring.
- **`gold/`**: Contains the final CSV files after the ETL process is complete.
- **`json_and_csv/`**: Stores the CSV and JSON files moved via the Bash script.
- **`scripts/`**: Contains all Bash and SQL scripts used for the assignment.
    - **`bash/`**: Bash scripts for ETL, file movement, and PostgreSQL loading.
    - **`sql/`**: SQL scripts for querying the PostgreSQL database.
- **`presentation/`**: Contains PowerPoint files and visual insights from the group assignment.

## Individual Assignment

### ETL Process

Your task involves writing a Bash script that performs a simple ETL (Extract, Transform, Load) process. The ETL steps are as follows:

1. **Extract**: 
   - Download a CSV file and save it in a folder named `raw/`. The script should confirm the file has been saved correctly.
   
2. **Transform**: 
   - Modify the CSV by renaming the column `Variable_code` to `variable_code`. 
   - Select the columns `year`, `Value`, `Units`, and `variable_code` and save the result into a new CSV file named `2023_year_finance.csv` in the `transformed/` folder. The script should confirm the transformation.

3. **Load**: 
   - Move the transformed file to the `gold/` folder and confirm that the file is loaded correctly.

### Moving Files

You are also required to write a Bash script that moves any `.csv` and `.json` files from the working directory into a folder named `json_and_csv/`. The script should handle multiple CSV and JSON files and confirm the move.

### PostgreSQL Competitor Analysis

As part of the ETL process, you will:
- Download a competitor's CSV file and load it into a PostgreSQL database named `posey`.
- Write SQL queries to answer specific business questions:
   - Find order IDs where `gloss_qty` or `poster_qty` is greater than 4000.
   - Find orders where `standard_qty` is zero and either `gloss_qty` or `poster_qty` exceeds 1000.
   - Find company names starting with 'C' or 'W' and where the primary contact contains 'ana' or 'Ana' but not 'eana'.
   - Provide a table showing the region, sales rep, and associated accounts, sorted alphabetically by account name.

Ensure your SQL scripts are placed in the **`scripts/sql/`** directory.

## Group Assignment

### Exploratory Data Analysis (EDA)

For the group project, your team will perform exploratory data analysis on the **posey** database:

- **Database Analysis**: Analyze the tables in the PostgreSQL database to extract insights.
- **PowerPoint Presentation**: Prepare a presentation summarizing the findings. The presentation should be saved in the **`presentation/`** folder.
- **Collaborative GitHub Workflow**: Each group member must contribute via separate branches and pull requests. Select one group member’s GitHub account to host the repository.

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/CoreDataEngineers.git
   cd CoreDataEngineers
