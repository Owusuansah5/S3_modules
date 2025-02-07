# terraform.tfvars
module "Dev_bucket" {
    source = "../"
    s3_bucket_name        = "my_unique_bucket_name"
    dynamodb_table_name   = "my_dynamo_table"
    dynamodb_billing_mode = "PAY_PER_REQUEST"
    dynamodb_hash_key     = "ID"
    dynamodb_attributes = [
  {
    name = "ID"
    type = "S"
  }
  
]

  
}
