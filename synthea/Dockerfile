FROM  arm64v8/openjdk:11.0.12-jdk-bullseye

RUN mkdir -p /app/synth/
WORKDIR /app/synth/

RUN wget https://github.com/synthetichealth/synthea/releases/download/v2.7.0/synthea-with-dependencies.jar

COPY ./synthea_config.properties /app/synth/synthea_config.properties