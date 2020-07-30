# CFPB Data Pipeline

Template:
- Built on top of the `nbdev` template.

Using:
- Data source: CFPB complaints data
- Data expectations: Great Expectations
- Data base: SQLite (or possibly MySQL or Postgres SQL)

## Data source details

- CSV: http://files.consumerfinance.gov/ccdb/complaints.csv.zip
- JSON: http://files.consumerfinance.gov/ccdb/complaints.json.zip
- API: https://cfpb.github.io/api/ccdb/api.html 
Endpoint: https://www.consumerfinance.gov/data-research/consumer-complaints/search/api/v1/
See here for details: https://raw.githubusercontent.com/cfpb/ccdb5-api/main/swagger-config.yaml


### CSV

Convert the file to SQLite database

`csv-to-sqlite -v -t full -f complaints.csv -o cfpb_complaints.db`

## Great Expectations

Uses SQL Alchemy

Which database backend are you using?
    1. MySQL
    2. Postgres
    3. Redshift
    4. Snowflake
    5. BigQuery
    6. other - Do you have a working SQLAlchemy connection string?
