# Jupyter interface to Postgres

This is a tool for writing SQL queries and executing them in an interactive notebook. It builds a portable Docker container that contains both Jupyter and a PostgreSQL server.

The database is preloaded with some tables from the [DVD rental sample dataset](http://www.postgresqltutorial.com/postgresql-sample-database/).

Julie has written a set of SQL exercises in [her fork](https://github.com/julizhu/sql-training-tool/) of the repo.

## Use with Binder

This repo is compatible with mybinder.org. Click the link below to launch a public online instance.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/giswqs/postgis/master)

## Use on your local machine

1. Install [docker](https://store.docker.com/editions/community/docker-ce-desktop-mac).
2. Install [repo2docker](https://repo2docker.readthedocs.io/en/latest/install.html).
3. `cd` into this directory and do `jupyter-repo2docker .`. After the image builds (a one-time operation), you'll see a link to the local server instance.

## Notes

The Jupyter interface to SQL is provided by the [ipython-sql](https://github.com/catherinedevlin/ipython-sql) plugin.
