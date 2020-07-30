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

`csv-to-sqlite -v -t full -f complaints.csv -o cfpb_complaints.db`
