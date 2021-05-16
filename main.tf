# Create a bucket
resource "aws_s3_bucket" "Testing" {

  versioning {
    enabled = true
  }
  bucket = "testing3301-demo-lab-1"
  tags = {     
    Name = "terratest-aws-s3-example-3301"     
    Environment = "Dev"   
  }

}

# Upload an object to aws test in order to test
resource "aws_s3_bucket_object" "test1-creation" {

  bucket = aws_s3_bucket.Testing.id

  key    = "test1.txt"
  content = "${timestamp()}"
}

resource "aws_s3_bucket_object" "test2-creation" {

  bucket = aws_s3_bucket.Testing.id

  key    = "test2.txt"
  content = "${timestamp()}"
}
