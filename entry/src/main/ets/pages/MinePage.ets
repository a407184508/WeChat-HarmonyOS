@Entry
@Component
export struct MinePage {
  @State message: string = 'Hello World'

  build() {
    List() {
      ListItem() {
        Row() {
          Image($r('app.media.icon'))
            .width(50)
          Text("name")
        }
      }
    }
  }
}