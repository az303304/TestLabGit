data azurerm_client_config current{}

resource "azurerm_resource_group" "rg"{
	name = "Terra-rg"
	location = "centralus"
}

resource "azurerm_key_vault" "kvult-suresh01"{
	name = "kvult-suresh01"
	location = azurerm_resource_group.rg.location
	resource_group_name = azurerm_resource_group.rg.name
	tenant_id = data.azurerm_client_config.current.tenant_id
	sku_name = "standard"
}

resource "azurerm_storage_account" "sureshsa01" {
	name = "sureshsa01"
	resource_group_name = azurerm_resource_group.rg.name
	location = azurerm_resource_group.rg.location
	account_tier = "Standard"
	account_replication_type = "LRS"
}
