import { TranType } from '../common/CustomizeEnum'
import { TranInfo } from '../entity/TranInfo'

@Preview
@Component
export struct TranItem {
  item: TranInfo

  build() {
    Row() {
      // image 头像
      Image(this.item.avatar)
        .width(50)
        .margin({
          right: 10
        })
      // col 名字 时间
      Column() {
        Text(this.item.title)
          .fontSize(16)
        Text(`${this.item.date.getFullYear()}年${this.item.date.getMonth()}月${this.item.date.getDate()}日 ${this.item.date.getUTCHours()}:${this.item.date.getUTCMonth()}`)
          .fontSize(12)
          .fontColor(Color.Gray)
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
      // 花销
      if (this.item.tranType === TranType.EXPENDITURES) {
        Text(`-¥${this.item.amount}`)
          .amountText('#EA5378', '#F8F1F3')
      } else if (this.item.tranType === TranType.REVENUE) {
        Text(`+¥${this.item.amount}`)
          .amountText('#73D2CE', '#EBF6F3')
      }
    }
    .width('100%')
  }
}

@Extend(Text)
function amountText(fontColor: string, backgroundColor: string) {
  .fontColor(fontColor)
  .backgroundColor(backgroundColor)
  .width(100)
  .padding(10)
  .borderRadius(999)
  .textAlign(TextAlign.Center)
  .margin({
    right: 15
  })
}

