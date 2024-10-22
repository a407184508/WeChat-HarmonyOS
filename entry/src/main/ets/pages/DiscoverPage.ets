@Entry
@Component
export struct DiscoverPage {
  @State message: string = 'Hello World'

  build() {
    List() {
      ForEach(Array.from({length: 10}), () => {
        ListItem() {
          Row(){
            Image($r('app.media.icon'))
              .width(50)
            Text("Name")
            Blank()
            Text("more")
          }
        }
      })
    }
    .height('100%')
  }
}