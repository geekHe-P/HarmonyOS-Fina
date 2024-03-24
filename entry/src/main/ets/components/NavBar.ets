import { it } from '@ohos/hypium'
import { Nav } from '../entity/Nav'

@Component
export struct NavBar {
  @Link nowIndex: number

  navItem: Nav[] = [
    new Nav($r('app.media.home_icon_select'), $r('app.media.home_icon_unselect')),
    new Nav($r('app.media.data_icon_select'), $r('app.media.data_icon_unselect')),
    new Nav($r('app.media.qrcode_icon'), $r('app.media.qrcode_icon'),true ,-35),
    new Nav($r('app.media.wallet_icon_select'), $r('app.media.wallet_icon_unselect')),
    new Nav($r('app.media.my_icon_select'), $r('app.media.my_icon_unselect'))
  ]

  build() {
    Row() {
      ForEach(
        this.navItem,
        (item: Nav, index: number) => {
          // nav图片渲染
          Image(this.nowIndex == index ? item.selectImage : item.normalImage)
            .width(item.qrCode? 62 : 32)
            .offset({ y: item.y})
            .onClick(() => {
              this.nowIndex = index
            })
        }
      )
    }
    .backgroundImage($r('app.media.Subtract'))
    .backgroundImageSize(ImageSize.Cover)
    .width('100%')
    .height(65)
    .justifyContent(FlexAlign.SpaceAround)
  }

}



