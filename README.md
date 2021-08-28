# DevOps assignment 1

![app_python](https://github.com/k1rill-fedoseev/devops/actions/workflows/app_python.yml/badge.svg)

This is a simple http server which displays current time in the specific timezone.

## Run natively

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install dependencies.

```bash
cd app_python
pip install -r requirements.txt
main:app
```

## Run using Docker

Build and run the image using Docker.

```bash
docker build -t devops app_python
docker run --rm -p 8000:8000 devops
```

## Lint source code

We are using the following linters for this repository:

* [Pylint](https://www.pylint.org)
* [MarkdownLint](https://github.com/markdownlint/markdownlint)
* [Hadolint](https://github.com/hadolint/hadolint)

```bash
pylint app_python
mdl .
hadolint **/Dockerfile
```

## Run unit-test

```
pytest
```

## Building using docker-compose

```bash
docker-compose build
```

## Running applications using docker-compose

```bash
docker-compose up
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
