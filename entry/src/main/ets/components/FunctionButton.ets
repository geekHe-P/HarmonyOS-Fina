@Preview
@Component
export struct FunctionButton {
  image: Resource
  title: string
  clickEvent: () => void

  build() {
    Column(){
      Image(this.image)
        .width(70)
        .onClick(this.clickEvent)
      Text(this.title)
    }
  }
}