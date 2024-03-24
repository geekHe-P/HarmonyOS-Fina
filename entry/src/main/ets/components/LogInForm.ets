@Preview
@Component
export default struct LogInForm {
  @State isFocus: boolean = false

  title: string
  inputType: InputType = InputType.Normal
  icon: Resource

  build() {
    Column() {
      // text
      Text(this.title)
        .textAlign(TextAlign.Start)
        .fontSize(16)
        .width('100%')
      .margin({
        bottom: 7,
        left: 8
      })
      // image input
      Row(){
        if (this.icon !== null) {
          Image(this.icon)
            .width(41)
            .fillColor(this.isFocus ? Color.Blue : Color.Gray)
        }

        TextInput({
          placeholder: `请输入${this.title}`,
        })
          .type(this.inputType)
          .backgroundColor(Color.White)
          .layoutWeight(1)

      }
      .padding(7)
      .onFocus(() => {
        this.isFocus = true
      })
      .onBlur(() => {
        this.isFocus = false
      })
      .border({
        width:  2,
        color: this.isFocus ? Color.Blue : Color.White,
        radius: 12
      })
    }
  }
}