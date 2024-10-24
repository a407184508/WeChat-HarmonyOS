@Entry
@Component
export struct HomePage {
  @State message: string = 'HomePage'

  build() {
    Navigation() {

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
    .navBarPosition(NavBarPosition.End)
    .title('微信')
    .titleMode(NavigationTitleMode.Free)
    .menus([{
      value: '添加',
      action: () => {
      }
    }])

    // .hideNavBar(true)
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
          Blank()
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