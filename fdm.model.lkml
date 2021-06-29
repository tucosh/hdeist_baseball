connection: "lookerdata"
include: "*.view.lkml"

explore: uli {
  group_label: "hdeist fdm"
  cancel_grouping_fields: [uli.amount]
}

explore: acct_by_date {
  group_label: "hdeist fdm"
  cancel_grouping_fields: [acct_by_date.amount]

}
