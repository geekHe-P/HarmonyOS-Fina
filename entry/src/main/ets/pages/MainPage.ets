import HeadTitle from '../components/HeadTitle'
import { NavBar } from '../components/NavBar'
import { DataStatistics } from '../views/DataStatistics'
import { Home } from '../views/Home'
import { My } from '../views/My'
import { Wallet } from '../views/Wallet'
@Entry
@Component
struct MainPage {
  @State nowIndex: number = 0

  build() {
    Column() {
      // 导航
      HeadTitle({
        nowIndex: this.nowIndex,
      })
        .backgroundColor(Color.White)
        .margin({
          bottom: 10
        })
      // 主页
      Scroll() {
        if (this.nowIndex == 0) {
          Home()
        } else if (this.nowIndex == 1) {
          DataStatistics()
        } else if (this.nowIndex == 3) {
          Wallet()
        } else if (this.nowIndex == 4) {
          My()
        }
      }
      .scrollBar(BarState.Off)
      .layoutWeight(1)
      .width('94%')
      .padding({
        bottom: 50
      })
      //navBar
      NavBar({
        nowIndex: $nowIndex
      })

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor($r('app.color.background'))
    .width('100%')
    .height('100%')
  }
}