// @Preview
import router from '@ohos.router'

@Component
export default struct HeadTitle {
  private arr: string[] =  ['首页', '数据统计', '扫码', '钱包', '我的']

  @State title: string = ''
  isBack: boolean
  @Prop nowIndex: number

  build() {
    Row() {
      // 返回按键是否渲染
      if (this.isBack)  {
        Image($r('app.media.Button_left'))
          .width(44)
          .height(41.5)
          .onClick( () => {
            router.back()
          })
      }
      // title
      Text(this.nowIndex === -1 ? this.title : this.arr[this.nowIndex])
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .fontSize(20)
        .offset({ x: this.isBack? -22 : 0})
    }
    .width('100%')
    .height(44)
    .backgroundColor(Color.White)
  }
}