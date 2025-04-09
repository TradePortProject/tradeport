variable "create_droplet" {
  description = "Whether to create a new droplet or use existing"
  type        = bool
  default     = false
}

variable "droplet_name" {
  description = "Name of the droplet"
  type        = string
  default     = "tradeport-staging"
}

variable "region" {
  description = "DigitalOcean region for the droplet"
  type        = string
  default     = "sgp1"
}

variable "droplet_size" {
  description = "Size of the droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "droplet_image" {
  description = "Image to use for the droplet"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "ssh_key_id" {
  description = "ID of the SSH key to add to the droplet"
  type        = string
}

variable "ssh_private_key_content" {
  description = <<EOT
The actual content of the SSH private key.
Use this variable in CI/CD environments (e.g., GitHub Actions) to inject the key content securely using TF_VAR_ssh_private_key_content.
If this is empty, Terraform will fallback to ssh_private_key_path.
EOT
  type        = string
  default     = ""
  sensitive   = true
}

variable "ssh_private_key_path" {
  description = <<EOT
Path to the SSH private key file.
Used when ssh_private_key_content is not provided.
Useful for local development where the key file exists in the file system.
EOT
  type        = string
  default     = "~/.ssh/id_rsa"
}
