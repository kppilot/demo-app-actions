resource "aws_s3_bucket" "state" {
  bucket = "demoapp_bucket"
 
  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}