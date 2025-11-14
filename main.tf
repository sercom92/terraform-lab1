terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Crear una imagen de Nginx
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Crear un contenedor a partir de la imagen
resource "docker_container" "web" {
  name  = var.web_container_name
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = var.web_external_port
  }  
}

# Imagen de Redis
resource "docker_image" "redis" {
  name = "redis:latest"
}

# Contenedor Redis
resource "docker_container" "redis" {
  name  = var.redis_container_name
  image = docker_image.redis.name

  ports {
    internal = 6379
    external = var.redis_external_port
  }

  depends_on = [
    docker_container.web
  ]
}
