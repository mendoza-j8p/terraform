#
# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "jendev" {
  name       = "jendev"
  public_key = "${file("id_rsa.pub")}"
}

