provider "bigip" {
  address  = "${var.address}:8443"
  username = var.username
  password = var.password
}

resource "bigip_as3" "nginx" {
  as3_json    = "${file("${path.module}/nginx.json")}"
  tenant_name = "consul_sd"
}
