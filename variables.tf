variable "org_maintenance_settings" {
  description = <<EOT
Map of org_maintenance_settings, attributes below
Required:
    - org_id
Optional:
    - wave_assignment_mode
EOT

  type = map(object({
    org_id               = string
    wave_assignment_mode = optional(string)
  }))
}

