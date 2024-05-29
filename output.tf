
output "firewall_id" {
  description = "Azure Firewall ID"
  value       = azurerm_firewall.test_firewall.id
}

output "firewall_name" {
  description = "Azure Firewall Name"
  value       = azurerm_firewall.test_firewall.name
}

output "public_ip_address" {
  description = "The address of the public IP"
  value       = data.azurerm_public_ip.test_ip.ip_address
}

output "firewall_policy_id" {
  description = "The ID of the firewall policy"
  value       = azurerm_firewall_policy.test_policy.id
}
