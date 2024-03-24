import ArrayList from '@ohos.util.ArrayList'
import { TranType } from '../common/CustomizeEnum'
import cardComp from '../components/CardComp'
import { FunctionButton } from '../components/FunctionButton'
import HeadTitle from '../components/HeadTitle'
import { TranItem } from '../components/TranItem'
import { TranInfo } from '../entity/TranInfo'

@Preview
@Component
export struct Home {

  funButtonArray: Array<{
    image: Resource,
    title: string,
    clickEven: () => void
  }> = [
    {
      image: $r('app.media.zh_icon'),
      title: "转账",
      clickEven: () => {

      }
    },
    {
      image: $r('app.media.sk_icon'),
      title: "收款",
      clickEven: () => {

      }
    },
    {
      image: $r('app.media.zd_icon'),
      title: "账单",
      clickEven: () => {

      }
    }
  ]

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
      //你好，欢迎回来
      Text('你好，')
        .textStyle(20, {
          bottom: 15
        })
      Text('欢迎回来！')
        .textStyle(24)
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
        ForEach(
          this.funButtonArray,
          (item: {
            image: Resource,
            title: string,
            clickEvent: () => {}
          }, index) => {
            FunctionButton({
              image: item.image,
              title: item.title,
              clickEvent: item.clickEvent
            })
              .margin(10)
          }
        )
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