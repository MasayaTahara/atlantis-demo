module "network" {
  source = "./modules/network"
  env    = var.env
  app    = "atlantis-demo"
}
