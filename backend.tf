/*# Backend must remain commented until the Bucket
 and the DynamoDB table are created. 
 TODO: After the creation you can uncomment it,
 run "terraform init" and then "terraform apply" */

terraform {
  backend "s3" {
    # Variables may not be used here.
    bucket         = "test-atlantis-demo-tfstate-management-bucket"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "test-atlantis-demo-tfstate-management-table"
  }
}
