terraform {
  backend "s3" {
    bucket = "terraform-vprofile-state000"
    key    = "terraform/backend"
    region = "eu-central-1"
  }
}
