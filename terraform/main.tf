terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "3.0.2"
        }
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "2.26.0"
        }
        local = {
            source = "hashicorp/local"
            version = "2.4.0"
        }
    }
}

variable "digitalocean_token" {
  description = "DigitalOcean API token"
  type        = string
}

variable "ssh_fingerprint" {
  description = "SSH key fingerprint for authentication"
  type        = string
}

provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_droplet" "app_server" {
  name       = "tradeport-server-test"
  region     = "sgp1"
  size       = "s-2vcpu-4gb"
  image      = "ubuntu-22-04-x64"
  ssh_keys   = [var.ssh_fingerprint]
}

output "droplet_ip" {
  description = "Public IP of the created Droplet"
  value       = digitalocean_droplet.app_server.ipv4_address
}
