FROM apache/airflow:1.10.15-python3.8

COPY ./requirements.txt requirements.txt

USER root

RUN apt-get update && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --user --no-warn-script-location -r requirements.txt && \
    rsync -a /root/.local/ "$AIRFLOW_USER_HOME_DIR/.local/" && \
    chown -R airflow "$AIRFLOW_USER_HOME_DIR/.local"
     
USER airflow
COPY config/airflow.cfg /opt/airflow/
COPY --chown=airflow:root ./.kube/config /opt/airflow/.kube/config
