@Entry
@Component
struct CircleOfFriendsPage {
  @State message: string = 'Hello World';

  build() {
    List() {
      ListItem() {
        Row({ space: 10 }) {
          Image($r('app.media.icon'))
            .width(50)
          Column() {
            Text("Nickname")
            Grid() {
              ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9], (item: number, index) => {
                GridItem() {
                  Image($r('app.media.MoreGame_Normal'))
                }
              })
            }
            .aspectRatio(1)
            .layoutWeight(1)
            .rowsTemplate('1fr 1fr 1fr')
            .rowsGap(10)
            .flexGrow(1)
          }
          .alignItems(HorizontalAlign.Start)
        }
        .alignItems(VerticalAlign.Top)
      }
    }
    .height('100%')
    .width('100%')
  }
}