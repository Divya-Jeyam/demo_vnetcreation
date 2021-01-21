module "RG"{
 source="./module/rg"
 location = "${var.location}"
 name = "${var.name}"
}
module "vnet"{
 source="./module/vnet"
 location ="${module.RG.mod1_rg}"
 name = "${module.RG.mod_rg}"
 vnetname= "${var.vnetname}"
 address ="${var.address}"
 subnet_name = "${var.subnet_name}"
 address_prefix = "${var.address_prefix}"
 nsgname            = "${var.nsgname}"
 nsgrulename1        = "${var.nsgrulename1}"
 nsgrulename2        = "${var.nsgrulename2}"
 nsgrulename3        = "${var.nsgrulename3}"
 priority1           = "${var.priority1}"
 priority2          = "${var.priority2}"
  priority3          = "${var.priority3}"
 direction          = "${var.direction}"
 access             = "${var.access}"
 protocol           = "${var.protocol}"
 sourceport         = "${var.sourceport}"
 destinationport1    = "${var.destinationport1}"
 destinationport2    = "${var.destinationport2}"
 destinationport3    = "${var.destinationport3}"
 sourceaddress      = "${var.sourceaddress}"
 destinationaddress = "${var.destinationaddress}"
}


