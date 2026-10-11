variable "list_items_lookup" {
  description = <<EOT
Map of list_items_lookup, attributes below
Required:
    - list_id
Optional:
    - account_id
    - max_items
    - per_page
    - search
EOT

  type = map(object({
    list_id    = string
    account_id = optional(string)
    max_items  = optional(number)
    per_page   = optional(number)
    search     = optional(string)
  }))
}

