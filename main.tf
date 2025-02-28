module "network" {
  source = "./modules/network"
}

module "compute" {
  source = "./modules/compute"
  network_id = module.network.network_id
}

module "database" {
  source = "./modules/database"
}

module "app_service" {
  source = "./modules/app_service"
}
