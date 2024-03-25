import { Nav } from '../entity/Nav'

// 数据

let navDB: Array<Nav> = [
    {
      selectImage: $r('app.media.home_icon_select'),
      normalImage: $r('app.media.home_icon_unselect'),
    },
    {
      selectImage: $r('app.media.data_icon_select'),
      normalImage: $r('app.media.data_icon_unselect'),
    },
    {
      selectImage: $r('app.media.qrcode_icon'),
      normalImage: $r('app.media.qrcode_icon'),
      qrCode: true,
      y: -35
    },
    {
      selectImage: $r('app.media.wallet_icon_select'),
      normalImage: $r('app.media.wallet_icon_unselect'),
    },
    {
      selectImage: $r('app.media.my_icon_select'),
      normalImage: $r('app.media.my_icon_unselect'),
    }
]

@Observed
export class NavModel {
  private navs: Array<Nav>

  getAllNav(): Array<Nav>{
    this.navs = navDB
    return this.navs
  }
}
