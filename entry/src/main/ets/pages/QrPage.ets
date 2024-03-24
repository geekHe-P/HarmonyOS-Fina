import HeadTitle from '../components/HeadTitle'

@Entry
@Component
struct QrPage {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        HeadTitle({
          title: '个人二维码',
          isBack: true,
          nowIndex: -1
        })
        QRCode("1")
          .margin(50)
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)
    }
    .height('100%')
  }
}