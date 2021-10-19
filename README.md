# Airflow
Deploy Apache Airflow inside Docker containers

This build requires a `.env` file which defines some secret variables, not included here in the repo for obvious security reasons. For more details, see the [Wiki page](https://github.com/sean-1014/airflow/wiki/Starting-Out#secrets).

Once that is set up, simply run `docker-compose up -d` to build and run the application. The Airflow webserver in this deployment has its port published at the host machine's port 80 so going to `localhost` in the browser should show the webserver UI if all goes well.
