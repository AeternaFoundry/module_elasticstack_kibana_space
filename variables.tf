variable "kibana_spaces" {
  description = <<EOT
Map of kibana_spaces, attributes below
Required:
    - name
    - space_id
Optional:
    - color
    - description
    - disabled_features
    - image_url
    - initials
    - solution
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name              = string
    space_id          = string
    color             = optional(string)
    description       = optional(string)
    disabled_features = optional(set(string))
    image_url         = optional(string)
    initials          = optional(string)
    solution          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

