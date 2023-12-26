# Create the first Digital Ocean droplet.

# Configure the droplet particulars:
resource "digitalocean_droplet" "ubuntu_droplet" {
    name   = "ubuntu-droplet"
    size   = "s-1vcpu-1gb"
    image  = "ubuntu-22-04-x64"
    region = "nyc3"
    ssh_keys = [
        data.digitalocean_ssh_key.terraform.id
    ]

    # Dont modify
    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.private_key)
        timeout = "2m"
    }
}


