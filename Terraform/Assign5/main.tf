terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.12.0"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}


# Start a container
resource "docker_container" "mysql_container" {
  name  = "${var.container_name}"
  image = docker_image.mysql_image.id
  volumes {
      volume_name = "var.mysql_volume_name"
      container_path = "/var/lib/mysql"
  }
  networks_advanced {
      name = "var.mysql_network_name"
  }
  
}