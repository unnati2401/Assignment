module "driver"{
    source="../module"
    env = var.env
    serviceName = "${var.env}-driver"
    
}

module "customer" {
    source="../module"
    env = var.env
    serviceName = "${var.env}-customer"
}


