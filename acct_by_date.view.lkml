

view: acct_by_date {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    datagroup_trigger: uli_datagroup
    # sql_trigger_value: select count(*) ct from `hale-sequence-317521.ds1.uli` ;;
    # persist_for: "10 minutes"
    # SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP())
    partition_keys: [ "pt" ]
    sql: SELECT
          _partitiontime pt
        , usage_date as usage_date
        , account_id
        , COUNT(*) as ct
        , sum(amount) amount
      FROM  `hale-sequence-317521.ds1.uli`
      GROUP BY pt, usage_date, account_id
      ;;
  }

  dimension: pt {
    label: "pt"
    description: "pt"
    type: date_time
    sql: ${TABLE}.pt ;;
  }


  dimension: usage_date {
    label: "usage_date"
    description: "usage date"
    type: date
    sql: ${TABLE}.usage_date ;;
  }

  dimension: account_id {
    label: "account_id"
    description: "account_id"
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: ct {
    label: "ct"
    description: "row count"
    type: number
    sql: ${TABLE}.ct ;;
  }

  dimension: amount {
    label: "amount"
    description: "revenue"
    sql: ${TABLE}.amount ;;
  }

}
