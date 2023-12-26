# Terraform Digital Ocean Base Image

## Description  
This code provides a working terraform installer for Digital Ocean that will create a single small instance.  

Many of my ansible scripts run on this base installer amd refer to this document.  I prefer using Digital Ocean as a development cloud and running production stuff on AWS or GCP, therefore this package is focused on rapidly deploying prototype servers on Digital Ocean.   

## Prerequisites

* You need a [Digital Ocean account](https://m.do.co/c/159b2a9fb0c3).
* You need to generate a [personal access token](https://docs.digitalocean.com/reference/api/create-personal-access-token/). 
* You need to [add your ssh key](https://docs.digitalocean.com/reference/api/create-personal-access-token/) to Digital Ocean
* If you are not familiar with Terraform, you should at least read up on the basics.

## Configuration
Open the provider.tf and main.tf files and modify them according to the comments.

## Process

Export a variable to the terminal with your Digital Ocean token.

`export DO_TOKEN="your_digital_ocean_access_token"`

Make sure you have your rsa public key added to Digital Ocean.

Check the code: `terraform plan -var "do_token=${DO_TOKEN}" -var "private_key=$HOME/.ssh/id_rsa"`

If running terraform plan was successful, you can  apply the plan and create your server:

Run the code: `terraform apply -var "do_token=${DO_TOKEN}" -var "private_key=$HOME/.ssh/id_rsa"`

Sources:

Many thanks to Digital Ocean for their always awesome tutorials.
https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean