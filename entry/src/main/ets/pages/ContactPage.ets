interface ContactInterface {
  name: string
  pic: string
  system: boolean
  // 前缀
  prefix: string
}

@Entry
@Component
export default struct ContactPage {
  @State items: ContactInterface[] = [
    {
      name: '添加朋友',
      pic: 'add',
      system: true,
      prefix: '#'
    },
    {
      name: '群聊',
      pic: 'group',
      system: true,
      prefix: '#'
    },
    {
      name: '邮箱',
      pic: 'email',
      system: true,
      prefix: '#'
    },
    {
      name: '企业微信联系人',
      pic: 'qiyewechat',
      system: true,
      prefix: '#'
    },
    {
      name: '公众号',
      pic: 'gongzhonghao',
      system: true,
      prefix: '#'
    }
  ]

  onPageShow(): void {

  }

  build() {
    List() {
      ListItem() {
        Search({ placeholder: '搜索微信号、通讯录、公众号' })
      }

      ForEach(this.items, (item: ContactInterface, _) => {
        ListItem() {
          ContactItem({ item: item })
        }
      })

      ForEach(Array.from({ length: 20 }), (item: string, _) => {
        ListItem() {
          ContactItem({
            item: {
              name: 'name' + item,
              pic: 'add',
              system: false,
              prefix: 'A'
            }
          })
        }
      })
    }
    .margin({ left: 10, top: 10, bottom: 10 })
  }
}

@Component
struct ContactItem {
  @Prop item: ContactInterface

  build() {
    Column() {
      Row() {
        Text(this.item.prefix)
      }
      .width('100%')
      .height(20)
      .backgroundColor(Color.Gray)


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