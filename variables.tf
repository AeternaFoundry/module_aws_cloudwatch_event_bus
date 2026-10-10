variable "cloudwatch_event_buses" {
  description = <<EOT
Map of cloudwatch_event_buses, attributes below
Required:
    - name
Optional:
    - description
    - event_source_name
    - kms_key_identifier
    - region
    - tags
    - tags_all
    - dead_letter_config (block):
        - arn (optional)
    - log_config (block):
        - include_detail (optional)
        - level (optional)
EOT

  type = map(object({
    name               = string
    description        = optional(string)
    event_source_name  = optional(string)
    kms_key_identifier = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    dead_letter_config = optional(object({
      arn = optional(string)
    }))
    log_config = optional(object({
      include_detail = optional(string)
      level          = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_event_buses : (
        v.kms_key_identifier == null || (length(v.kms_key_identifier) >= 1 && length(v.kms_key_identifier) <= 2048)
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

