/*
 ##Create an S3 Bucket
resource "aws_s3_bucket" "my_mobucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = "Dev_bucket"
    Environment = "Dev"
  }
}

# Create a DynamoDB Table
resource "aws_dynamodb_table" "my_dynamo" {
  name             = var.dynamodb_table_name
  hash_key         = var.dynamodb_hash_key
  billing_mode     = var.dynamodb_billing_mode
}
  
#   # Dynamically create attribute blocks
# dynamic "attribute" {
#     for_each = var.dynamodb_attributes
#     content {
#       name = attribute.value.name
#       type = attribute.value.type
#     }
# }

*/
##main.tf

 #Create an S3 Bucket
resource "aws_s3_bucket" "my_mobucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = "Dev_bucket"
    Environment = "Dev"
  }
}

# Create a DynamoDB Table
resource "aws_dynamodb_table" "my_dynamo" {
  name             = var.dynamodb_table_name
  hash_key         = var.dynamodb_hash_key
  billing_mode     = var.dynamodb_billing_mode
  
  # Dynamically create attribute blocks
  dynamic "attribute" {
    for_each = var.dynamodb_attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }
}
