

view: acct_by_date {

  derived_table: {
    datagroup_trigger: uli_datagroup
    partition_keys: [ "pt" ]
    increment_key: "pt"
    sql: SELECT
          _partitiontime pt
        , usage_date as usage_date
        , account_id
        , COUNT(*) as ct
        , sum(amount) amount
        , current_timestamp() current_time
      FROM  `hale-sequence-317521.ds1.uli`
      GROUP BY pt, usage_date, account_id
      ;;
  }
  # this is a comment
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
    description: "amount"
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension: current_time {
    label: "current_time"
    type: date_time
    description: "current_time"
    sql: ${TABLE}.current_time ;;
  }

}
