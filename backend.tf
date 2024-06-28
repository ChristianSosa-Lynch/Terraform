terraform {
  backend "s3" {
    bucket = "YOUR_BUCKET_HERE"
    key    = "terraform/backend_exercise6"
    region = "us-east-1"
  }
}
