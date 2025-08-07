resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
  name  = "nginx-server"
  image = docker_image.nginx_image.name
  ports {
    internal = 80
    external = 8081
  }
}
