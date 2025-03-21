terraform {
  backend "s3" {
    bucket = "ky-s3-terraform"
    key    = "ky-terraform-coaching13.tfstate" # Replace the value of key to <your suggested name>.tfstate for example terraform-ex-ec2-<NAME>.tfstate
    region = "us-east-1"
  }
}