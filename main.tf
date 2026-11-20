provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "s3_reader" {
  name = "capstone-s3-reader"
}
variable "s3_read_policy" {
  description = "Policy allowing read-only access to Amazon S3"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_user_policy" "s3_read_access" {
  name   = "s3-read-policy"
  user   = aws_iam_user.s3_reader.name
  policy = var.s3_read_policy
}
