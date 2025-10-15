view: partidas_abertas_fornecedores {
  sql_table_name: `DEMO_TBG.partidas_abertas_fornecedores` ;;

  dimension: cod_favorecido {
    type: string
    sql: ${TABLE}.CodFavorecido ;;
  }
  dimension_group: data_pagamento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataPagamento ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.Documento ;;
  }
  dimension: favorecido {
    type: string
    sql: ${TABLE}.Favorecido ;;
  }
  dimension: fonecedor {
    type: string
    sql: ${TABLE}.Fonecedor ;;
  }
  dimension: forma_pagamento {
    type: string
    sql: ${TABLE}.FormaPagamento ;;
  }
  measure: debito {
    type: sum
    sql: ${TABLE}.Debito ;;
  }

  measure: credito {
    type: sum
    sql: ${TABLE}.Credito ;;
  }
  measure: count {
    type: count
  }
}
