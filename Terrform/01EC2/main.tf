resource "aws_instance" "demo_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Demo-EC2"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name
  force_destroy = true
}