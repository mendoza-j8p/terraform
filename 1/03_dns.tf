# Creamos un dominio nuevo

resource "digitalocean_domain" "jenkbs" {
  name = "jenkbs.com"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.jenkbs.name}"
  type   = "A"
  name   = "pelada"
  ttl    = "30"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

