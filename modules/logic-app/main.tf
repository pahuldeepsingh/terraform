# Create the empty Logic App shell without a workflow
resource "azurerm_logic_app_workflow" "empty_logic_app" {
  name                = var.logic_app_name
  location            = var.location
  resource_group_name = var.resource_group_name

  # Skip the definition block to leave the Logic App without any workflow
  parameters = {}


  tags = {
    environment = var.tag_environment
    project     = var.tag_project_name
  }
}


