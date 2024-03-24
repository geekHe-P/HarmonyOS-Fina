import router from '@ohos.router'
import { TranType } from '../common/CustomizeEnum'
import cardComp from '../components/CardComp'
import { FunctionButton } from '../components/FunctionButton'
import { TranItem } from '../components/TranItem'
import { TranInfo } from '../entity/TranInfo'

@Preview
@Component
export struct Wallet {

  // 交易列表数据
  tranInfo: Array<TranInfo> = [
    new TranInfo($r('app.media.avatar_icon'), "可口可乐", new Date(), 3, TranType.EXPENDITURES),
    new TranInfo($r('app.media.avatar_icon'), "工资", new Date(), 12000, TranType.REVENUE),
    new TranInfo($r('app.media.avatar_icon'), "apple 旗舰店", new Date(), 7999, TranType.EXPENDITURES),
    new TranInfo($r('app.media.avatar_icon'), "压岁钱", new Date(), 1000, TranType.REVENUE),
    new TranInfo($r('app.media.avatar_icon'), "华为旗舰店", new Date(), 7999, TranType.EXPENDITURES),
    new TranInfo($r('app.media.avatar_icon'), "问界M5", new Date(), 300000, TranType.EXPENDITURES),
    new TranInfo($r('app.media.avatar_icon'), "红包", new Date(), 200, TranType.REVENUE),
    new TranInfo($r('app.media.avatar_icon'), "年终奖", new Date(), 50000, TranType.REVENUE)
  ]

  build() {
    Column() {
      // 添加
      Row() {
        Button('添加银行卡')
          .backgroundColor($r('app.color.base'))
          .margin({
            right: 20
          })
          .onClick(() => {
            // router.replaceUrl()
          })
      }
      .justifyContent(FlexAlign.End)
      .width('100%')

      // 银行卡片
      cardComp()
        .padding(20)
        .margin({
          bottom: 15
        })
      // 功能分类text
      Text('功能分类')
        .textStyle(24)
      // 图片按钮
      Row() {
        Image($r('app.media.avatar_icon'))
          .width(50)
          .margin(10)
        Image($r('app.media.avatar_icon'))
          .width(50)
          .margin(10)
        Image($r('app.media.avatar_icon'))
          .width(50)
          .margin(10)
      }

      // 交易信息text
      Text('交易信息')
        .textStyle(24)
      // 交易信息list
      Column({space: 15}) {
        ForEach(
          this.tranInfo,
          (item: TranInfo, index: number) => {
            TranItem({ item })
          }
        )
      }
      .width('100%')
      .margin({
        top: 10
      })
    }
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
    .layoutWeight(1)
    .width('100%')
  }
}

@Extend(Text)
function textStyle(size: number, margin?: Padding) {
  .fontSize(size)
  .margin(margin)
}