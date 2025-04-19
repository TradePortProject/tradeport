terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.26.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

data "digitalocean_droplet" "app_server" {
  name = "tradeport-server"
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
