@Observed
export class Card {
  /*
   * 银行名称
   * */
  name: string

  /*
   * 金额
   * */
  amount: number

  /**
   * 金额格式化
   */
  amountFormat ?: string
  /*
   * 卡号
   * */
  carCode: string | number
  /*
   * 日期
   * */
  date: Date

  constructor(name: string,
              amount: number,
              carCode: string | number,
              date: Date
  ) {
    this.name = name
    this.amount = amount
    this.carCode = carCode
    this.date = date
    this.amountFormat = this.amount.toLocaleString()
  }

}