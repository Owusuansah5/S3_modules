# Define variables for S3 bucket and DynamoDB table

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default = "my_module_bucket"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default = "my_module_dynamo"
}

variable "dynamodb_billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default = "PAY_PER_REQUEST"
}

variable "dynamodb_hash_key" {
  description = "The hash key for the DynamoDB table"
  type        = string
  default = "Lock_ID"
}

variable "dynamodb_attributes" {
  description = "List of attributes for the DynamoDB table"
  type = list(object({
    name = string
    type = string
  }))
}

#