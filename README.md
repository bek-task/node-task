# node-task

Terraform code reside in terraform folder,
it's creating resources what's mentioned as a filename.tf (for ex: vpc.tf creates vpc)

improvements that can be done:
  1) backend state for tfstate tfc or s3 bucket with rds
  2) using variables to make it multi-Env
  3) split infra part (like vpc, networking, subnets) into separate repo, manage only ecs service that is related only for app
  4) add ci/cd like github actions for automated image builds and re-use in task def (currently it's using latest tag)