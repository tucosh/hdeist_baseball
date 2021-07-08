connection: "lookerdata"
include: "*.view.lkml"
# dumb comment
datagroup: uli_datagroup {
  sql_trigger: SELECT max(partition_date) FROM `hale-sequence-317521.ds1.uli` ;;
  max_cache_age: "24 hours"
}
persist_with: uli_datagroup

explore: uli {
  group_label: "hdeist fdm"
#  cancel_grouping_fields: [uli.amount]
}

explore: uli_bis {
  group_label: "hdeist fdm"
}
# explore: acct_by_date {
#   group_label: "hdeist fdm"
#   cancel_grouping_fields: [acct_by_date.amount]

# }
