output "s3_bucket_id" {
  description = "The ID (name) of the created S3 bucket."
  value       = module.s3_bucket_example.bucket_id
}

output "kms_key_arn_used" {
  description = "The ARN of the KMS key used for bucket encryption."
  value       = module.s3_bucket_example.kms_key_arn
}

output "log_bucket_name" {
  description = "The name of the bucket used to store access logs."
  value       = module.s3_bucket_example.log_bucket_name
}
