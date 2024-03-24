import { TranType } from '../common/CustomizeEnum'

@Observed
export class TranInfo {
  /*
   * 头像信息
   * */
  avatar: Resource
  /*
   * 交易人title
   * */
  title: string
  /*
   * 交易时间
   * */
  date: Date
  /*
   * 交易金额
   * */
  amount: number
  /*
   * 交易类型
   * */
  tranType: TranType

  constructor(avatar: Resource,
              title: string,
              date: Date,
              amount: number,
              tranType: TranType) {
    this.avatar = avatar
    this.title = title
    this.date = date
    this.amount = amount
    this.tranType = tranType
  }

}