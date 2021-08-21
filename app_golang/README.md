# DevOps assignment 1 (Bonus)

This is a simple http server which displays current time in the specific timezone.

## Run natively

```bash
cd app_golang
go run main.go
```

## Run using Docker

Build and run the image using Docker.

```bash
docker build -t devops app_golang
docker run --rm -p 8000:8000 devops
```

## Lint source code

We are using the following linters for this repository:

* [Golangcilint](https://golangci-lint.run)
* [MarkdownLint](https://github.com/markdownlint/markdownlint)
* [Hadolint](https://github.com/hadolint/hadolint)

```bash
golangci-lint run ./app_golang/**/*.go
mdl .
hadolint **/Dockerfile
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
