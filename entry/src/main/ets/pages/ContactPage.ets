@Entry
@Component
export struct ContactPage {
  @State message: string = 'Hello World'

  build() {
    List() {
      ForEach(Array.from({length: 20}), () => {
        ListItem() {
          Row() {
            Image($r('app.media.icon'))
              .width(50)
            Text("Nickname")
          }
        }
      })
    }
  }
}