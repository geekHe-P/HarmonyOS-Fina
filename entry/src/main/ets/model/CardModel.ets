import { Card } from '../entity/Card'

//数据
let cardDB: Array<Card> = [
  {
    name: 'aBank',
    amount: 15349,
    carCode: 'xxxxxxx xxx xxx 2563',
    date: new Date()
  },
  {
    name: 'bBank',
    amount: 21654,
    carCode: 'xxxxxxx xxx xxx 9286',
    date: new Date()
  },
  {
    name: 'cBank',
    amount: 31566,
    carCode: 'xxxxxxx xxx xxx 3688',
    date: new Date()
  }
]

@Observed
export class CardModel {
  private cards: Array<Card>
  // 拿到所有卡片信息
  getALlCard() : Array<Card> {
    // 拿到数据
    this.cards = cardDB

    return this.cards
  }

  // 增加卡片
  addCard(card: Card): boolean {
    try {
      cardDB.push(card)
      return true
    } catch (e) {
      return false
    }
  }
}

