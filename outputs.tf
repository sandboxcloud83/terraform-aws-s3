output "bucket_id" {
  description = "The name/ID of the S3 bucket."
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "kms_key_arn" {
  description = "The ARN of the KMS key used for bucket encryption."
  value       = var.kms_key_arn
}

output "log_bucket_name" {
  description = "The name of the bucket used to store access logs."
  value       = var.log_bucket_name
}
