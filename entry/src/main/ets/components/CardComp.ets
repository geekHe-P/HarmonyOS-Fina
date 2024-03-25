import { Card } from '../entity/Card'
import { CardViewModel } from '../viewModel/CardViewModel';
import { CardModel } from '../model/CardModel';

@Preview
@Component
export default struct cardComp {
  cardModel: CardModel
  cardViewModel: CardViewModel
  cards: Array<Card>

  aboutToAppear() {
    this.cardModel = new CardModel()
    this.cardViewModel = new CardViewModel(this.cardModel)
    this.cards = this.cardViewModel.cards
  }

  build() {
    Swiper() {
      ForEach(
        this.cards,
        (item) => {
          cardItem(item)
        }
      )
    }
    .backgroundColor($r('app.color.base'))
    .borderRadius(25)
    .width('100%')
    .shadow({
      radius: 25,
      color: '#ffaaeaf3',
      offsetY: 30,
      offsetX: 15
    })

  }
}

@Builder
function cardItem(item: Card) {
  Column() {
    Row() {
      Text(item.name)
        .fontSize(28)
        .fontColor(Color.White)
      Image($r('app.media.card_icon'))
        .width(30)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .margin({
      bottom: 20,
    })

    Row() {
      Text('¥')
        .fontColor(Color.White)
        .fontSize(16)
      Text(item.amount.toString())
        .fontColor(Color.White)
        .fontSize(32)
    }
    .justifyContent(FlexAlign.Start)
    .width('100%')

    Row() {
      Text(item.carCode.toString())
        .fontColor(Color.White)
        .fontSize(16)
    }
    .margin({
      top: 5,
      bottom: 5
    })
  }
  .padding(30)
  .alignItems(HorizontalAlign.Start)

}