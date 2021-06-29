view: uli {
  sql_table_name: `hale-sequence-317521.ds1.uli` ;;
  #
  dimension: partitiontime {
    label: "partitiontime"
    sql: ${TABLE}._partitiontime ;;
    type: date_time
  }
  dimension: partition_date {
    label: "partition_date"
    type: string
    sql: ${TABLE}.partition_date ;;
  }
  dimension: service_id {
    label: "service_id"
    type: string
    sql: ${TABLE}.service_id ;;
  }
  dimension: service_display_name{
    primary_key: no
    label: "service_display_name"
    type: string
    sql: ${TABLE}.service_display_name ;;
  }
  dimension: account_id {
    label: "account_id"
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: usage_date {
    label: "usage_date"
    type: date
    sql: ${TABLE}.usage_date ;;
  }
  dimension: amount {
    primary_key: no
    label: "amount"
    type: number
    sql: ${TABLE}.amount ;;
  }
}
