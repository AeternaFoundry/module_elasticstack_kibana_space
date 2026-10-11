output "kibana_spaces_id" {
  description = "Map of id values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_spaces_color" {
  description = "Map of color values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no color are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.color if v.color != null && length(v.color) > 0 }
}
output "kibana_spaces_description" {
  description = "Map of description values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_spaces_disabled_features" {
  description = "Map of disabled_features values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no disabled_features are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.disabled_features if v.disabled_features != null && length(v.disabled_features) > 0 }
}
output "kibana_spaces_image_url" {
  description = "Map of image_url values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no image_url are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.image_url if v.image_url != null && length(v.image_url) > 0 }
}
output "kibana_spaces_initials" {
  description = "Map of initials values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no initials are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.initials if v.initials != null && length(v.initials) > 0 }
}
output "kibana_spaces_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_spaces_name" {
  description = "Map of name values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_spaces_solution" {
  description = "Map of solution values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no solution are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.solution if v.solution != null && length(v.solution) > 0 }
}
output "kibana_spaces_space_id" {
  description = "Map of space_id values across all kibana_spaces, keyed the same as var.kibana_spaces except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_space.kibana_spaces : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}

