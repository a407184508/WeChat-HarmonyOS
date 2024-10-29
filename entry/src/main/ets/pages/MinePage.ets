import deviceInfo from '@ohos.deviceInfo'

@Entry
@Component
export default struct MinePage {
  @State devName: string = '模拟器'

  aboutToAppear(): void {
    this.devName = deviceInfo.marketName
  }

  onPageShow(): void {
    this.devName = deviceInfo.marketName
  }

  build() {
    Navigation() {
      List() {
        ListItem() {
          Row() {
            Image($r('app.media.icon'))
              .width(50)
            Text(this.devName)
          }
        }

        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], () => {
          ListItem() {
            Row() {
              Image($r('app.media.icon'))
                .width(50)
              Text('我的信息')
            }
          }
        })
      }
      .alignListItem(ListItemAlign.Start)

    }
    .title('我的')
  }
}