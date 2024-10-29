import axios, { AxiosError, AxiosResponse } from '@ohos/axios'

@Entry
@Component
export default struct HomePage {
  @State message: string = 'HomePage'
  @Provide('pageInfos') pageInfos: NavPathStack = new NavPathStack()
  navigationItem: NavigationMenuItem = {
    value: "Top",
    icon: "../../resources/base/media/ad_lookbook_finder_icon_dark_Normal",
    action: () => {
      console.log("click")
    }
  }

  getData() {
    axios
      .get('https://api.github.com/users/octocat')
      .then((response: AxiosResponse<string>) => {
        console.log(response.data)
      })
      .catch((error: AxiosError) => {
        console.log(error.name)
      })
  }

  build() {
    Navigation(this.pageInfos) {

      List() {
        ForEach(Array.from({ length: 20 }), () => {
          ListItem() {
            Column() {
              HomeItem()
                .margin({ left: 10, right: 10 })
                .onClick(() => {
                  // this.pageInfos.pushPath('ChatPage', true)
                })
              Divider()
                .margin({ left: 10, right: 10 })
            }
          }
        })
      }
      .height('100%')

    }
    .mode(NavigationMode.Stack)
    .title('微信')
    .menus([this.navigationItem, this.navigationItem, this.navigationItem])
  }
}

@Component
struct HomeItem {
  build() {
    Row() {
      Image($r('app.media.wechat_icon'))
        .width(50)

      Column({ space: 15 }) {
        Row() {
          Text("Nickname")
          Text("Time")
        }
        // .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Text("Message")
      }
      .alignItems(HorizontalAlign.Start)
      .padding({ left: 10 })

    }
    .width('100%')
    .padding(5)
    .backgroundColor(Color.Red)
  }
}