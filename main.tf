module "network" {
  source = "./modules/network"
  env    = var.env
  app    = "atlantis-demo"
}

module "tfstate_manager_module" {
  source = "./modules/tfstate_manager"
  env    = var.env
  app    = "atlantis-demo"
}
