import { ContactPage } from './ContactPage'
import { DiscoverPage } from './DiscoverPage'
import { HomePage } from './HomePage'
import { MinePage } from './MinePage'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  controller: TabsController = new TabsController()

  build() {
    Tabs({ barPosition: BarPosition.End,
      index: 1,
      controller: this.controller
    }) {
      TabContent() {
        HomePage()
      }
      .tabBar('微信')

      TabContent() {
        ContactPage()
      }
      .tabBar('联系人')

      TabContent() {
        DiscoverPage()
      }
      .tabBar('发现')

      TabContent() {
        MinePage()
      }
      .tabBar('我')
    }
    .width('100%')
  }
}