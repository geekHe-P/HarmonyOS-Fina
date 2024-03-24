@Preview
@Component
export struct MyItem {
  image: Resource
  text: string
  clickEven: () => void

  build() {
    Row() {
      // 图片
      Image(this.image)
        .width(40)
        .margin({
          right: 15
        })
      // 文字
      Text(this.text)
      // 箭头
      Blank()
      Image($r('app.media.right_icon'))
        .width(20)
        .margin({
          right: 10
        })
    }
    .width('100%')
    .onClick(this.clickEven)
  }
}