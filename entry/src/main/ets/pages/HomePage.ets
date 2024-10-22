@Entry
@Component
export struct HomePage {
  @State message: string = 'HomePage'

  build() {
    List() {
      ForEach(Array.from({ length: 20 }), () => {
        ListItem() {
          HomeItem()
            .margin(10)
        }
      })
    }
    .height('100%')
  }
}

@Component
struct HomeItem {
  build() {
    Row() {
      Image($r('app.media.icon'))
        .width(50)

      Column({ space: 15 }) {
        Row() {
          Text("Nickname")
          Text("Time")
        }
        .justifyContent(FlexAlign.SpaceBetween)

        Text("Message")
      }
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding(5)
    .backgroundColor(Color.Red)
  }
}