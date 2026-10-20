terraform {
  backend "s3" {
    bucket       = "aws-production-platform-tfstate-653174262841-d6505fdf"
    key          = "environments/dev/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
