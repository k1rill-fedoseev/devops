# List of Terraform best practices

* Split configuration into several files
* Organize files by workspaces in first-level directories
  and by projects in the second-level directories
* Use `vars.tf` for such things like cloud region and instance types
* Override default security groups and firewall settings for the AWS instances