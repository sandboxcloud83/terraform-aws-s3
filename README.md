# Terraform AWS S3 Bucket Module

This Terraform module creates an S3 bucket in AWS, applying security best practices by default.

Key features include:
- S3 bucket creation.
- Default versioning enabled to protect against accidental deletions.
- S3 Public Access Block configuration to prevent data exposure.

## Usage

Here is a basic example of how to use this module:

```hcl
module "secure_s3_bucket" {
  source      = "./terraform-aws-s3" # or the path to your module

  bucket_name = "my-unique-and-secure-bucket"

  tags = {
    Environment = "Production"
    Project     = "My-Project"
  }
}
```

## Inputs

| Name                | Description                                                | Type         | Default     | Required |
| ------------------- | ---------------------------------------------------------- | ------------ | ----------- | :------: |
| `bucket_name`       | The name of the S3 bucket. Must be globally unique.        | `string`     | `n/a`       |   yes    |
| `enable_versioning` | If `true`, versioning will be enabled for the bucket.      | `bool`       | `true`      |    no    |
| `tags`              | A map of tags to assign to the bucket.                     | `map(string)`| `{}`        |    no    |

## Outputs

| Name                    | Description                                                              |
| ----------------------- | ------------------------------------------------------------------------ |
| `s3_bucket_id`          | The name (ID) of the S3 bucket.                                          |
| `s3_bucket_arn`         | The ARN (Amazon Resource Name) of the S3 bucket.                         |
| `s3_bucket_domain_name` | The bucket domain name. Will be of format `bucketname.s3.amazonaws.com`. |