terraform {
  backend "s3" {
    bucket       = "mmm-bucket-27"
    key          = "week10/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}