resource "docker_network" "private_bridge_network" {
  name = "mysql_network_name_variable"
  driver = "bridge"
  internal = "true"
}