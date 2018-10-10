TENKIHUKU

・概要
その日の天気に合わせてみんながどのような洋服を着ていたかがわかるので、お出かけをしてから服装に失敗した！ということをなくせます。
自分のコーディネートを写真で残しておくことにより、自分がいつ・何を着ていたかを思い出すことができます。

・コンセプト
今日の天気によりどのような洋服を着ていくかが分かる

・バージョン
Ruby 2.5.0 Rails5.2.1

・機能一覧

■ログイン機能

■ユーザー登録機能

　　■メールアドレス、名前、パスワード必須

■パスワード再設定機能

■ユーザーアイコン設定機能

■天気表示機能

　　■Darksky　API　を使って天気を表示

■天気に合わせた洋服表示機能

■天気服投稿機能

　　■洋服の画像は必須

■天鼓服編集機能

■天気服削除機能

　　■天気服の編集と削除は投稿者のみ実行可

■天気服お気に入り機能

　　■ブログのお気に入りについては1つの天気服に対して1人1回しかできない

　　■自分自身の天気服にはお気に入りできない

■天気服詳細機能

　　■天気服の投稿者、天気、お気に入りの数

■ユーザー詳細機能

　　■ユーザーが今まで投稿した天気服一覧を見ることができる

■マイページ画面

　　■お気に入り一覧、自分が投稿した天気服を見ることができる

■ページネーション機能

　　■お気に入り一覧、ユーザー詳細機能の今まで投稿した天気服一覧、自分が今まで投稿した天気服一覧に実装

■フォロー機能

　　コーディネートの好みが似ている人をフォローできる

■カレンダー機能

　　■カレンダーAPIを使用→マイページにて使用

・カタログ設計

https://docs.google.com/spreadsheets/d/1GzsUBZPGpZ_za4dC0l3pdQXdxTAZeDksYUAHc04VV54/edit?usp=sharing
・テーブル設計

https://docs.google.com/spreadsheets/d/1JAZ6Dn4UF3UTucrZy9aJUwUDfroDqkjysTtlwE_7I0w/edit?usp=sharing

・画面遷移図

https://cacoo.com/diagrams/SakObkokAjq42Lhb/12449

・画面ワイヤーフレーム

https://cacoo.com/diagrams/e48F4vlDgh1b0kcC/815E5

・使用予定gem

  carriewave

  mini_magic

  device

  kaminari

  pry-rails

  better_errors

  binding_of_caller

  letter_opner_web
