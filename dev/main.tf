module "rg" {
    source = "github.com/Ratansenku/terraform-module/tree/main/1ResourceGroup"
    rgs = var.rgs
}
module "vnet" {
    depends_on = [ module.rg ]
    source = "github.com/Ratansenku/terraform-module/tree/main/2Vnet"
    vnets = var.vnets
}
module "subnet" {
    depends_on = [ module.vnet ]
    source = "github.com/Ratansenku/terraform-module/tree/main/3Subnet"
    subnets = var.subnets
}
module "pip" {
    depends_on = [ module.subnet ]
    source = "github.com/Ratansenku/terraform-module/tree/main/4Pip"
    pip = var.pip
}
module "nic" {
    depends_on = [ module.pip ]
    source = "github.com/Ratansenku/terraform-module/tree/main/5Nic"
    nic = var.nic
}
module "nsg" {
    depends_on = [ module.nic ]
    source = "github.com/Ratansenku/terraform-module/tree/main/6Nsg"
    nsg = var.nsg
    sr = var.sr
}
module "nsga" {
    depends_on = [ module.nsg ]
    source = "github.com/Ratansenku/terraform-module/tree/main/7Nsga"
    nsga = var.nsga
}
module "vm" {
    depends_on = [module.nic]
    source = "github.com/Ratansenku/terraform-module/tree/main/8Vm"
    vm = var.vm
}