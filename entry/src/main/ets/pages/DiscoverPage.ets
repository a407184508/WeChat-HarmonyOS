@Entry
@Component
export default struct DiscoverPage {
  @State message: string = 'Hello World'

  build() {
    List() {
      ForEach(Array.from({ length: 10 }), () => {
        ListItem() {
          Column() {
            Row() {
              Image($r('app.media.wechat_icon'))
                .width(50)
                .border({ radius: 10 })
              Text("Name")
              Blank()
              Text("more")
            }
            .width('100%')

            Divider()
          }
          .padding({ left: 10, right: 10 })
        }
      })
    }
    .height('100%')
  }
}