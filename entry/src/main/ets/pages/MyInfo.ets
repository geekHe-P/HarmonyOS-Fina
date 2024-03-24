import HeadTitle from '../components/HeadTitle'
import LogInForm from '../components/LogInForm'
import { MyItem } from '../components/MyItem'

@Entry
@Component
struct MyInfo {
  @State nowIndex: number = -1

  build() {
    Column(){
      HeadTitle({
        title: '编辑个人信息',
        isBack: true,
        nowIndex: this.nowIndex
      })
      Stack() {
        Column(){
          Text('个人信息')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 50,
              bottom: 20,

            })
              // 个人姓名
            .fontSize(14)
          LogInForm({
            title: '姓名',
            inputType: InputType.Normal,
            icon: null
          })


          // 联系电话
          LogInForm({
            title: '联系电话',
            inputType: InputType.PhoneNumber,
            icon: null
          })
            .margin({
              top: 10
            })

          //性别
          // Select([
          //   {value: '男'},
          //   {value: '女'}
          // ])
          //   .value('男')
          //   .selected(0)

          // 按钮 取消 保存
          Row() {
            Button('取消')
              .width('30%')
            Button('保存')
              .width('30%')
          }
          .margin({
            top: 20
          })
          .width('100%')
          .justifyContent(FlexAlign.SpaceEvenly)
        }
        .padding(20)
        .alignItems(HorizontalAlign.Start)
        .backgroundColor(Color.White)
        .height('80%')
        .width('100%')
        .borderRadius(30)

        Image($r('app.media.avatar_icon'))
          .width(120)
          .offset({
            y: -330
          })
      }

    }
    .backgroundColor($r('app.color.background'))
    .justifyContent(FlexAlign.SpaceBetween)
    .height('100%')
    .width('100%')
  }
}