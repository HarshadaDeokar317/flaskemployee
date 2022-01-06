terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}


resource "docker_container" "flasksqliteemployee" {
  
  name  = "flasksqliteemployee"
  image = var.docker-image
  ports {
    internal = 7070
    external = 7070
  }
}