interface ContactInterface {
  name: string
  pic: string
  system: boolean
}

@Entry
@Component
export struct ContactPage {
  @State items: ContactInterface[] = [
    {
      name: '添加朋友',
      pic: 'add',
      system: true
    },
    {
      name: '群聊',
      pic: 'group',
      system: true
    },
    {
      name: '邮箱',
      pic: 'email',
      system: true
    },
    {
      name: '企业微信联系人',
      pic: 'qiyewechat',
      system: true
    },
    {
      name: '公众号',
      pic: 'gongzhonghao',
      system: true
    }
  ]

  onPageShow(): void {

  }

  build() {
    List() {
      ForEach(this.items, (item: ContactInterface, _) => {
        ListItem() {
          ContactItem({ item: item })
        }
      })
    }
    .margin(10)
  }
}

@Component
struct ContactItem {
  @Prop item: ContactInterface

  build() {
    Column() {
      Row() {
        Image($r(`app.media.c_${this.item.pic}`))
          .width(50)

        Text(this.item.name)
          .margin({ left: 10 })
      }
      .width('100%')
      .margin(10)

      Divider()
    }
  }
}