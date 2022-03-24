# Utility to Load Synthea CSV data to OMOP CDM

:information_source: Currently supports CDM v5.x

Run these steps to setup a local OMOP/CDM test DB with Synthea data.

### Step 1 - (Optional)

Follow the steps [in the ./synthea subfolder](./synthea/) for generating Synthea data (only IF you want
a larger dataset than what is there now).
### Step 2 - Start you local PostgreSQL container

Start a local Postgres container:
```
docker run --name local-postgres --rm \
-p 5433:5432 \
-e POSTGRES_PASSWORD=mysecretpassword \
-d \
postgres:12.10-bullseye
```

*Once the DB is up and running:* Create a database called `postgres` and 3 schemas with the names `raw_synthea`, `cdm_synthea` and `vocab`.
TODO - ^ automate this step.

### Step 3 - Build and run the "Synthea to CDM" data loading

:information_source: Based on the following repo:
- https://github.com/OHDSI/ETL-Synthea
  - further improved by this fork: https://github.com/thehyve/OHDSI-ETL-Synthea
    - and fixed in this fork: https://github.com/pieterlukasse/OHDSI-ETL-Synthea


Clone **this** repo (https://github.com/pieterlukasse/OHDSI-ETL-Synthea) and build a local image by running:
```
docker build -t ohdsi/etl-synthea .
```

Use the built image to run the following command, which will load the CSV data and the vocabulary into 
the localPostgres DB:
```
docker run --rm --net=host \
  -e SYNTHEA_DB_URI="postgresql://postgres:mysecretpassword@localhost:5433/postgres" \
  -e SYNTHEA_RAW_SCHEMA=raw_synthea \
  -e SYNTHEA_CDM_SCHEMA=cdm_synthea \
  -e SYNTHEA_VOCAB_SCHEMA=vocab \
  -v $PWD/synthea/synthea_out/csv:/data/synthea/output/csv:ro \
  -v $PWD/vocab_small:/data/synthea/vocab_small:ro \
  ohdsi/etl-synthea
```
