# Safari Web Push
## 概要
Safari Web Push
macOS + SafariではVersionによってはFCMを利用できないためAPNsによるプッシュ通知を行う必要がある

## Versionごとの違い
* macOS10.9以降
  * SafariはAPNsを使用してのWebプッシュ通知をサポート
  * 参考リンク: [Safariプッシュ通知の設定](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/NotificationProgrammingGuideForWebsites/PushNotifications/PushNotifications.html)

* macOS13以降のSafari16
  * SafariはWebプッシュ（クロスブラウザープッシュAPI、通知API、およびServiceWorker標準を使用するプッシュ通知）をサポート
  * 参考リンク: [Safariおよびその他のブラウザでのWebプッシュ通知の送信](https://developer.apple.com/documentation/usernotifications/sending_web_push_notifications_in_safari_and_other_browsers)

## 手順
1. Apple Developerに登録
  * メールが届くので案内どおりに進めてApple Developer登録を済ませる
2. Apple  にプッシュプロバイダーとして登録する
  * [Identifierを追加する](https://developer.apple.com/account/resources/identifiers/add/bundleId)
    * `Website Push IDs`を選択する
  * [証明を作成する](https://developer.apple.com/account/resources/certificates/add)
    * `Website Push ID Certificate`を選択する
    * 上記で作成したIdentifierを選択


### サーバー側
1. iconsetの作成
  ```shell
  sh ./gen_icons.sh
  ```
2. 
## 参考リンク
- [Safariプッシュ通知](https://developer.apple.com/notifications/safari-push-notifications/)
- [ウェブサイトの通知について](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/NotificationProgrammingGuideForWebsites/Introduction/Introduction.html)
- [RFC8030](https://datatracker.ietf.org/doc/html/rfc8030)