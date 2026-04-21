resource "azurerm_resource_group" "rg" {
  name     = "${local.prefix}-${local.name}-rg"
  location = local.location
}

module "avm-res-network-virtualnetwork" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "0.17.1"

  name = "${local.prefix}-${local.name}-vnet"
  parent_id = azurerm_resource_group.rg.id
  location = local.location
  address_space = [ "10.0.0.0/16" ]
}