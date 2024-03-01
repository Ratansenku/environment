module "rg" {
    source = "github.com/Ratansenku/terraform-module/tree/main/1ResourceGroup"
    rgs = var.rgs
}
module "vnet" {
    source = "github.com/Ratansenku/terraform-module/tree/main/2Vnet"
    vnets = var.vnets
}
module "subnet" {
    source = "github.com/Ratansenku/terraform-module/tree/main/3Subnet"
    subnets = var.subnets
}
module "pip" {
    source = "github.com/Ratansenku/terraform-module/tree/main/4Pip"
    pip = var.pip
}
module "nic" {
    source = "github.com/Ratansenku/terraform-module/tree/main/5Nic"
    nic = var.nic
}
module "nsg" {
    source = "github.com/Ratansenku/terraform-module/tree/main/6Nsg"
    nsg = var.nsg
    sr = var.sr
}
module "nsga" {
    source = "github.com/Ratansenku/terraform-module/tree/main/7Nsga"
    nsga = var.nsga
}
module "vm" {
    source = "github.com/Ratansenku/terraform-module/tree/main/8Vm"
    vm = var.vm
}