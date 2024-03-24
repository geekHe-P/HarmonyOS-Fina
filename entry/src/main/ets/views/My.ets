import router from '@ohos.router'
import { MyItem } from '../components/MyItem'

@Preview
@Component
export struct My {

  build() {
    Column() {
      top()

      // 条目
      MyItem({
        image: $r('app.media.edit_icon'),
        text: '编辑个人信息',
        clickEven: () => {
          router.pushUrl({
            url: 'pages/MyInfo'
          })
        }
      })
        .margin({
          top: 15
        })
      MyItem({
        image: $r('app.media.qrcode_icon_external'),
        text: '个人二维码',
        clickEven: () => {
          router.pushUrl({
            url: 'pages/QrPage'
          })
        }
      })
        .margin({
          top: 15
        })
    }
    .height('100%')
    .width('100%')

  }
}

@Builder
function top() {
  Stack() {
    Column() {
      Text('偷影子的人')
        .fontSize(20)
      Text('heboxuan@gmail.com')
        .fontSize(12)
        .fontColor(Color.Gray)
    }
    .width('70%')
    .padding(28)
    .borderRadius(15)
    .backgroundColor(Color.White)
    .shadow({
      radius: 15,
      color: Color.Gray,
      offsetY: 10
    })

    Image($r('app.media.avatar_icon'))
      .width(80)
      .offset({
        y: -55
      })
  }
  .margin({
    top: 55
  })
  .align(Alignment.Top)
}