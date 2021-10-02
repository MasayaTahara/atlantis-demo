module "tfstate_manager_module" {
  source = "./modules/tfstate-manager"
  env    = var.env
  app    = "atlantis-demo"
}

module "network" {
  source = "./modules/network"
  env    = var.env
  app    = "atlantis-demo"
}
