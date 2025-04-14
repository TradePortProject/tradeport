provider "digitalocean" {
  token = var.digitalocean_token 
}

resource "digitalocean_droplet" "app_server" {
  name    = "tradeport-server"
  region  = "sgp1"
  size    = "s-2vcpu-4gb"
  image   = "ubuntu-22-04-x64"
  ssh_keys = [var.ssh_fingerprint]
}

output "droplet_ip" {
  value = digitalocean_droplet.app_server.ipv4_address
}
