# CI best practices

## Common CI best practices

* Split jobs between stages
* Use jobs dependencies
* Use job filters on branch names and tags
* Cache installed tools and dependencies
* Use custom base image with all necessary tools already installed

## Jenkins related best-practices

* Correctly setup credentials to GitHub and other external services for efficient access.
* Use docker agent for running jobs inside of it
