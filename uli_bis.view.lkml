

view: uli_bis {

  derived_table: {
    datagroup_trigger: uli_datagroup
    partition_keys: [ "pt" ]
    increment_key: "pt"
    explore_source: uli {
      column: pt {
        field: uli.pt
      }
      column: partition_date {
        field: uli.partition_date
      }
      column: account_id {
        field: uli.account_id
      }
    }
  }
  # this is a comment
  dimension: pt {
    label: "pt"
    description: "pt"
    type: date_time
    sql: ${TABLE}.pt ;;
  }
  dimension: partition_date {
    label: "partition_date"
    description: "partition_date"
    type: string
    sql: ${TABLE}.partition_date ;;
  }

  dimension: account_id {
    label: "account_id"
    description: "account_id"
    type: string
    sql: ${TABLE}.account_id ;;
  }


}
