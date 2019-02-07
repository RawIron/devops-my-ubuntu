provider "aws" {
  region     = "ca-central-1"
}

resource "aws_s3_bucket" "private-storage" {
  bucket = "private-data-storage-9e9ace"
  acl    = "private"
  region = "ca-central-1"
}

resource "aws_iam_user" "private-storage" {
  name = "s3-storage"
  path = "/home/"
}

resource "aws_iam_user_policy" "private-storage" {
  name = "s3-storage-rw"
  user = "${aws_iam_user.private-storage.name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:PutObject",
        "s3:PutObjectAcl"],
      "Resource": [
        "arn:aws:s3:::private-data-storage-9e9ace/*",
        "arn:aws:s3:::private-data-storage-9e9ace"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_access_key" "private-storage" {
  user = "${aws_iam_user.private-storage.name}"
}

output "secret" {
  value = ["${aws_iam_access_key.private-storage.id}", "${aws_iam_access_key.private-storage.secret}"]
}

