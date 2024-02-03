output "website_endpoint" {
    description = "Domain name of the bucket"
    value       = try(aws_s3_bucket_website_configuration.mybucket.website_endpoint, "")
}

output "name" {
    description = "Name (id) of the bucket"
    value       = aws_s3_bucket.mybucket.id
}