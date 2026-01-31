location            = "westus2"
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
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDTZFxhV8qZN/DSx+CiqVcrJxEPJjOys0y8AbmfkeT5Saf2caggEQ6XGwH9Lm12pJ1VLOWwtk5ZxoIIlkKWvhFsso1F+JX6r1/hkGwtOPfI0f0+02sEYGJ3mveo/s9ykTqwEu/YrX5vnf57Db16fFvi4SJ0g3Tl20+pkJqAVnpkHGKATYJI7NfkxokMdS47vc84IW3nETNvGDAyET1tQzCHaVmLTrfVzv8X9vVDi5Btk4umUy/ZESvOUVEVRPsuV2/wqW0RK5gGp+C4koGXTOAmy8WVZNkPuI6L+/9EPXb+t0T6RhDvHuqreT5t76/pRrRSn7S0ZpMZI01L8ozwUo73uk4l7Ku/JXzNBekPWsaUjJPtHKwbP/5neDFOFZSKdgbRZk7V/9ztp5/XMCAqQYugD0NTxuHqyCrNe5TEPBFs9CGred8FC66y4QbN0LjHbOUOUH/o83PErIBaNVgbJt2/+K5yACIUiqI4UuRydJGaWuo+k9xG65XhFgxkfiNkY/KXj4MiyiQC4b31yf54lf/n4b0x3yY5FbD6mwlQqS07n45CoCrNwGokWKBf4Z3b4rnDXp1zG7C8bizZxxo6dwCkqvFKn+0JUieOY3xLRkHLQpdutMxA36qnJU5HTvVWisBtNiCfBbsie23Io2Jexv0X7C0gTJFkytuZbITYy7Ucyw== azure-spot-vm"

os_disk_name = "osdisk-spot-linux"

# zone = "2"