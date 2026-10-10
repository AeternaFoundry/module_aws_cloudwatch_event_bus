output "cloudwatch_event_buses_id" {
  description = "Map of id values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_event_buses_arn" {
  description = "Map of arn values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_event_buses_dead_letter_config" {
  description = "Map of dead_letter_config values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => one(v.dead_letter_config) if v.dead_letter_config != null && length(v.dead_letter_config) > 0 }
}
output "cloudwatch_event_buses_description" {
  description = "Map of description values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloudwatch_event_buses_event_source_name" {
  description = "Map of event_source_name values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.event_source_name if v.event_source_name != null && length(v.event_source_name) > 0 }
}
output "cloudwatch_event_buses_kms_key_identifier" {
  description = "Map of kms_key_identifier values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.kms_key_identifier if v.kms_key_identifier != null && length(v.kms_key_identifier) > 0 }
}
output "cloudwatch_event_buses_log_config" {
  description = "Map of log_config values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => one(v.log_config) if v.log_config != null && length(v.log_config) > 0 }
}
output "cloudwatch_event_buses_name" {
  description = "Map of name values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_event_buses_region" {
  description = "Map of region values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_event_buses_tags" {
  description = "Map of tags values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudwatch_event_buses_tags_all" {
  description = "Map of tags_all values across all cloudwatch_event_buses, keyed the same as var.cloudwatch_event_buses"
  value       = { for k, v in aws_cloudwatch_event_bus.cloudwatch_event_buses : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

