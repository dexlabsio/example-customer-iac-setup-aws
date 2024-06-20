resource "aws_s3_bucket" "dexlabs-tf-state-store" {
  bucket        = "dexlabs-tf-state-store-customerx"
  force_destroy = false
}

resource "aws_s3_bucket_versioning" "tf-state-store-versioning" {
  bucket = aws_s3_bucket.dexlabs-tf-state-store.id
  versioning_configuration {
    status = "Enabled"
  }
}
