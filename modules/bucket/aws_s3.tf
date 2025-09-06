resource "aws_s3_bucket" "s3" {
  bucket = "my-bct-trf"

  tags = {
    Name        = "my-bct-trf1"
    Environment = "Dev"
  }
}