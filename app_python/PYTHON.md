# Best practices for Python app

## Application best practices

* Use Production ready web-framework - **Flask**
* Use popular python linter - **pylint**
* List all dependencies and their version for reproducible builds
* Run production **WSGI** server (Gunicorm) instead of **Flask** dev server
* Allow to configure the app using environment variables,
  as recommended by the twelve factor app
* Containerize application using **Docker** containers
* Use **Jinja** templates instead of hardcoding html strings in the source code
* Include `.gitignore` for skipping irrelevant files in the Git VCS
* Include `.dockerignore` for reducing docker context size

## Unit test best practices

* Use popular testing framework (e.g. pytest)
* Use fixtures to create dependencies
