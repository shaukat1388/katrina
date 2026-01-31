location            = "eastus"
resource_group_name = "rg-spot-linux"

vnet_name           = "vnet-spot"
vnet_address_space  = ["10.0.0.0/16"]

subnet_name          = "subnet-spot"
subnet_address_space = ["10.0.1.0/24"]

nsg_name      = "nsg-spot-linux"
public_ip_name = "pip-spot-linux"
nic_name       = "nic-spot-linux"

vm_name  = "linux-spot-vm"
vm_size  = "Standard_B1s"

admin_username = "azureuser"
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQ..."

os_disk_name = "osdisk-spot-linux"