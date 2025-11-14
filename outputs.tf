output "web_access" {
  description = "Web Service URL"
  value       = "http://localhost:${var.web_external_port}"
}

output "redis_endpoint" {
  description = "Redis Service Endpoint"
  value       = "localhost:${var.redis_external_port}"
}
