variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

variable "enable_versioning" {
  description = "If true, versioning will be enabled for the bucket."
  type        = bool
  default     = true
}

variable "kms_key_arn" {
  description = "Optional: The ARN of the KMS key to encrypt the bucket."
  type        = string
  default     = null
}

variable "log_bucket_name" {
  description = "Opcional: El nombre del bucket donde se guardarán los logs de acceso."
  type        = string
  default     = null # Al ser 'null' por defecto, el logging es opcional
}

variable "log_prefix" {
  description = "Opcional: Un prefijo para los archivos de log dentro del bucket de destino."
  type        = string
  default     = "log/"
}
