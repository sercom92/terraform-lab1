variable "web_container_name" {
  description = "Name of web container"
  type        = string
  default     = "web_server"
} 

variable "web_external_port" {
  description = "Port of web app"
  type        = number
  default     = 8080
}

variable "redis_container_name" {
  description = "name of Redis container"
  type        = string
  default     = "redis_server"
}

variable "redis_external_port" {
  description = "Port of Redis app"
  type        = number
  default     = 6379
}
