# declare Terraform Provider

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set Input Variables
variable "do_token" {}
variable "pvt_key" {}

#  the digital ocean token for
provider "digitalocean" {
  token = var.do_token
}

# Configure this to match the name you used when you added your key to Digital Ocean
data "digitalocean_ssh_key" "terraform" {
  name = "Jasons-MacBook-Pro"
}