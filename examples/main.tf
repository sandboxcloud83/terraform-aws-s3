module "log_bucket" {
  source = "../../terraform-aws-s3"
  bucket_name = "mi-app-demo-s3-access-logs-${random_id.this.hex}"
  log_bucket_name = null
  kms_key_arn = null

  tags = {
    Name        = "S3 Log Bucket"
    ManagedBy   = "Terraform"
  }
}

module "kms_key" {
  source = "../../terraform-aws-kms"
  alias_name          = "mi-app/s3-key-demo"
  key_description     = "Clave KMS para el bucket S3 de demostración"
}

module "s3_bucket_example" {
  source = "../../terraform-aws-s3"
  bucket_name = "mi-bucket-de-ejemplo-${random_id.this.hex}"
  log_bucket_name = module.log_bucket.bucket_id
  kms_key_arn     = module.kms_key.key_arn

  tags = {
    Environment = "Example"
    ManagedBy   = "Terraform"
  }
}

resource "random_id" "this" {
  byte_length = 4
}
