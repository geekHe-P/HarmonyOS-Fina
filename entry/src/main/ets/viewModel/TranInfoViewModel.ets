import { TranInfo } from '../entity/TranInfo'
import { TranInfoModel } from '../model/TranInfoModel'

@Observed
export class NavViewModel {
  tranInfos: Array<TranInfo>

  constructor(cardModel: TranInfoModel) {
    this.tranInfos = cardModel.getAllTranInfo()
  }
}