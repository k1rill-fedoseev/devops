# List of used best practices for Docker

* Use lightweight images based on alpine distribution
* Use docker layer caching. First install dependencies, then copy source code
* Use multi-stage build for complied applications (e.g. golang)
* Support configuration of the container via environment variables
* Use docker-compose for easier runs
* Include `.dockerignore` for reducing docker context size
* Run binaries in containers under non-root users
* Make included binaries non-writable
