@Preview
@Component
struct NavigationBar {
  title: string = '标题'

  build() {
    Stack() {
      Text(this.title)
      Button('add')
        .alignSelf(ItemAlign.End)
        .buttonStyle(ButtonStyleMode.TEXTUAL)
    }
    .height(44)
    .width('100%')
  }
}