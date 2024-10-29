import router from '@ohos.router'

@Entry
@Component
export default struct LoginPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        Blank()
        Button('简体中文')
          .backgroundColor('#0')
          .fontColor(Color.Gray)
      }
      .padding(10)
      .width('100%')

      Blank()
      Row({ space: 10 }) {
        Button('登录')
          .layoutWeight(1)
          .backgroundColor(Color.Gray)
          .onClick(() => {
            router.replaceUrl({
              url: 'pages/Index',
            })
          })
        Button('注册')
          .layoutWeight(1)
          .backgroundColor(Color.Green)
      }
      .padding(20)
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r("app.media.background"), ImageRepeat.NoRepeat)
    .backgroundImageSize(ImageSize.Cover)

  }
}