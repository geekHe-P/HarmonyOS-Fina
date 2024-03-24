import { Card } from '../entity/Card'
import { CardModel } from '../model/CardModel'

@Observed
export class CardVewModel {
  cards: Array<Card>

  constructor(cards: CardModel) {
    this.cards = cards.getALlCard()
    // this.format()
  }

  // format(): void {
  //    this.cards.forEach(card => {
  //     card.amountFormat = card.amount.toLocaleString()
  //   })
  // }
}
//
// new Intl.NumberFormat('zh-CN', {
//   style: 'currency',
//   currency: 'CNY',
//   minimumFractionDigits: 2
// }).format(card.amount).toString()