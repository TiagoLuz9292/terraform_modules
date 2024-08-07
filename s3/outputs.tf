output "bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "The domain name of the S3 bucket"
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "state_bucket_name" {
  description = "The name of the S3 bucket used for Terraform state"
  value       = aws_s3_bucket.this.bucket
}

output "state_table_name" {
  description = "The name of the DynamoDB table used for Terraform state locks"
  value       = aws_dynamodb_table.this.name
}