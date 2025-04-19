data "digitalocean_droplet" "app_server" {
  name = "tradeport-server"
  # Add a depends_on to ensure this runs after a potential creation
  # depends_on = [digitalocean_droplet.new_droplet]
}

resource "digitalocean_droplet" "new_droplet" {
  count       = length(data.digitalocean_droplet.app_server.id) > 0 ? 0 : 1
  name        = "tradeport-server"
  region      = "sgp1"
  size        = "s-2vcpu-4gb"
  image       = "ubuntu-22-04-x64"
  ssh_keys    = [var.ssh_fingerprint]
}

output "droplet_ip" {
  description = "Public IP of the created Droplet"
  value       = length(digitalocean_droplet.new_droplet) > 0 ? digitalocean_droplet.new_droplet[0].ipv4_address : data.digitalocean_droplet.app_server.ipv4_address
}
