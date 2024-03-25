import { TranType } from '../common/CustomizeEnum'
import { TranInfo } from '../entity/TranInfo'

// 数据
let tranInfoSB: Array<TranInfo> = [
  new TranInfo($r('app.media.avatar_icon'), "可口可乐", new Date(), 3, TranType.EXPENDITURES),
  new TranInfo($r('app.media.avatar_icon'), "工资", new Date(), 12000, TranType.REVENUE),
  new TranInfo($r('app.media.avatar_icon'), "apple 旗舰店", new Date(), 7999, TranType.EXPENDITURES),
  new TranInfo($r('app.media.avatar_icon'), "压岁钱", new Date(), 1000, TranType.REVENUE),
  new TranInfo($r('app.media.avatar_icon'), "华为旗舰店", new Date(), 7999, TranType.EXPENDITURES),
  new TranInfo($r('app.media.avatar_icon'), "问界M5", new Date(), 300000, TranType.EXPENDITURES),
  new TranInfo($r('app.media.avatar_icon'), "红包", new Date(), 200, TranType.REVENUE),
  new TranInfo($r('app.media.avatar_icon'), "年终奖", new Date(), 50000, TranType.REVENUE)
]

@Observed
export class TranInfoModel {
  private tranInfos: Array<TranInfo>

  getAllTranInfo() : Array<TranInfo> {
    this.tranInfos = tranInfoSB
    return this.tranInfos
  }

}