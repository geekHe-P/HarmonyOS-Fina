import resourceManager from '@ohos.resourceManager'
import UIAbility from '@ohos.app.ability.UIAbility'
import HeadTitle from '../components/HeadTitle'
import LogInForm from '../components/LogInForm'
import common from '@ohos.app.ability.common'
import { Log } from '../common/Log'
import hilog from '@ohos.hilog';

@Entry
@Component
struct LogIn {
  // ！！！！！基于真机或虚拟机
  // uiAbilityContext = getContext(this) as common.UIAbilityContext
  // resManager = this.uiAbilityContext.resourceManager\
  @State isRegister: boolean = false
  @State timeCount: number = 60
  @State nowIndex: number = -1

  timer: number = 0

  // 模拟发送验证码功能
  sendCode() {
    this.starTimeDown()
  }

  // 倒计时定时器 意思同时存在两个定时器
  starTimeDown() {
    this.timeCount -= 1
    this.timer = setInterval( () => {
      this.timeCount -= 1
      if (this.timeCount == 0) {
        this.timeCount = 60
        clearInterval(this.timer)
      }
    }, 1000)
  }

  build() {
    // 整体垂直排列 采用列线形布局
    Column() {
      // 标题头
      HeadTitle({
        title: '登录',
        isBack: false,
        nowIndex: this.nowIndex
      })
        .width('94%')
        .margin({
          top: 10,
          bottom: 10
        })

      // 登录界面
      Stack(){
        // 邮箱密码表单
        Column({space: 25}) {
          LogInForm({
            title: '电子邮箱',
            inputType: InputType.Email,
            icon: $r('app.media.mail_icon')
          })
          LogInForm({
            title: '密码',
            inputType: InputType.Password,
            icon: $r('app.media.pwd_icon')
          })
          if (this.isRegister) {
            Row() {
              LogInForm({
                title: '验证码',
                inputType: InputType.Normal,
                icon: null
              })
                .layoutWeight(1)
              Button(this.timeCount == 60 ? '获取验证码' : this.timeCount.toString())
                .stateEffect(this.timeCount == 60 ? true: false)
                .backgroundColor(this.timeCount == 60 ? $r('app.color.base') : Color.Gray)
                .margin({
                  left: 5,
                  right: 5,
                  bottom: 7
                })
                .onClick(() => {
                  this.sendCode()
                })
            }
            .alignItems(VerticalAlign.Bottom)

          }
          // 登录注册按钮
          Button(this.isRegister ? "注册": "登录")
            .backgroundColor($r('app.color.base'))
            .width(200)

          Button(this.isRegister ? "去登录": "去注册")
            .backgroundColor($r('app.color.base'))
            .onClick(() => {
              this.isRegister = !this.isRegister
            })
            .width(200)
        }

        // 图标
        Image($r('app.media.Login_icon'))
          .width(88)
          .offset({ y: -80 })
      }
      .padding(22)
      .alignContent(Alignment.Top)
      .backgroundColor(Color.White)
      .width('94%')
      .layoutWeight(1)
      .borderRadius(20)
      .margin({
        top: 30,
        bottom: "3%"
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.background'))
  }
}
