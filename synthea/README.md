## Setting up a synthetic data OMOP/CDM database for local development and testing

### Useful references

The steps below are based on documentation and code found by following these pages and highlighed sections:

- https://github.com/OHDSI/ETL-Synthea -> see wiki -> Getting Started -> https://github.com/synthetichealth/synthea/wiki/Getting-Started -> https://github.com/synthetichealth/synthea/wiki/Basic-Setup-and-Running -> https://github.com/synthetichealth/synthea/wiki/Common-Configuration


### Steps to generate new Synthea CSV data (Optional - in case you want a bigger Synthea dataset)

Build a local synthea image based on the `Dockerfile` in this folder:
```
docker build -t synthea .
```

Use the docker image to generate a Synthea test set in CSV format (tweak `NR_PATIENTS` to the desired number of
patients to generate):
```
docker run --rm \
-v $PWD/synthea_out/:/app/synth/output \
--env NR_PATIENTS=5 \
-w /app/synth \
synthea \
java -jar synthea-with-dependencies.jar Massachusetts Milton -c synthea_config.properties -p $NR_PATIENTS
```

This generates the following CSV data in `./synthea_out` folder:
```
├── output
│   ├── csv
│   │   ├── allergies.csv
│   │   ├── careplans.csv
│   │   ├── conditions.csv
│   │   ├── devices.csv
│   │   ├── encounters.csv
│   │   ├── imaging_studies.csv
│   │   ├── immunizations.csv
│   │   ├── medications.csv
│   │   ├── observations.csv
│   │   ├── organizations.csv
│   │   ├── patients.csv
│   │   ├── payers.csv
│   │   ├── payer_transitions.csv
│   │   ├── procedures.csv
│   │   ├── providers.csv
│   │   └── supplies.csv
```
