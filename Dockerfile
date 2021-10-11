FROM apache/airflow:1.10.15-python3.8

COPY ./requirements.txt requirements.txt

USER root
RUN apt-get update && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --user --no-warn-script-location \
        -r requirements.txt
     
USER airflow
COPY config/airflow.cfg /opt/airflow/
