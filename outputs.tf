output "list_items_lookup_account_id" {
  description = "Map of account_id values across all list_items_lookup, keyed the same as var.list_items_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_list_items.list_items_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "list_items_lookup_list_id" {
  description = "Map of list_id values across all list_items_lookup, keyed the same as var.list_items_lookup except keys with no list_id are omitted"
  value       = { for k, v in data.cloudflare_list_items.list_items_lookup : k => v.list_id if v.list_id != null && length(v.list_id) > 0 }
}
output "list_items_lookup_max_items" {
  description = "Map of max_items values across all list_items_lookup, keyed the same as var.list_items_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_list_items.list_items_lookup : k => v.max_items if v.max_items != null }
}
output "list_items_lookup_per_page" {
  description = "Map of per_page values across all list_items_lookup, keyed the same as var.list_items_lookup except keys with no per_page are omitted"
  value       = { for k, v in data.cloudflare_list_items.list_items_lookup : k => v.per_page if v.per_page != null }
}
output "list_items_lookup_result" {
  description = "Map of result values across all list_items_lookup, keyed the same as var.list_items_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_list_items.list_items_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "list_items_lookup_search" {
  description = "Map of search values across all list_items_lookup, keyed the same as var.list_items_lookup except keys with no search are omitted"
  value       = { for k, v in data.cloudflare_list_items.list_items_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}

