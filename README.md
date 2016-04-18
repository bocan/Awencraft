# Awencraft
A Spigot-based Minecraft server automatically created and setup (and often destroyed) by code.

[Terraform](https://www.terraform.io/) creates (or destroys) the nessesary EC2 instance on Amazon Web Services.  The data is saved long-term in EBS storage regardless of whether the server exists or not.

[Ansible](https://www.ansible.com/) then updates, installs all dependencies, installs Minecraft, and powers it up.

A warning! This can be a very expensive thing to leave running.  Power it up.  Play.  Then switch it off unless you're made of cash.  There are cheaper cloud providers than Amazon if you really want to run it 24/7.
