# README

## アプリケーション名  
ORIGINAL SHIFT

## アプリケーション概要  
シフトの共有、希望時間の投稿機能

## URL※  
https://original-shift.onrender.com

## テスト用アカウント

## 利用方法
・新規登録からユーザー情報を登録する
・希望時間投稿ページから、出勤したい希望時間と日時を指定する
・カレンダー表に投稿した時間帯が表示される
・投稿した時間帯から希望時間の変更・削除するページに遷移する
・チャット画面でチャット機能が使用できる

## アプリケーションを作成した背景  
飲食店や小売店のパート・アルバイト（特に２４時間営業のコンビニなど）のシフト管理・調整に役立てるため。
従業員が希望する勤務時間帯を提出し、それを参考に経営者がシフトを計画しやすくすることを想定して作成した。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1kZMQD9SmyYmAwT6N67n-MF2DoaXUy8ifEq4-ycDVW3k/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明※
一覧/ログイン機能
[![Image from Gyazo](https://i.gyazo.com/21007c621af896336e05fc85f02ef0de.gif)](https://gyazo.com/21007c621af896336e05fc85f02ef0de)

シフト希望時間 投稿機能
[![Image from Gyazo](https://i.gyazo.com/c76f9f326ad48c73506f5cf560ca43ae.gif)](https://gyazo.com/c76f9f326ad48c73506f5cf560ca43ae)

シフト希望時間 編集機能
[![Image from Gyazo](https://i.gyazo.com/e0413033f0c1e37a9a38e163c967e39e.gif)](https://gyazo.com/e0413033f0c1e37a9a38e163c967e39e)

## 実装予定の機能
・チャット機能の充実
・各種機能ページのデザイン

## データベース設計

### usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |

#### Association

- has_many :posts
- has_many :comments



### postsテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| desired_time       | integer    | null: false                    |
| start_time         | datetime   | null: false                    |
| user               | references | null: false, foreign_key: true |

#### Association
- belongs_to :user



### commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |

#### Association
- belongs_to :user


## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/7585352ee9fad056eb62a29ef65085fb.png)](https://gyazo.com/7585352ee9fad056eb62a29ef65085fb)

## 開発環境
HTML, CSS, Ruby on rails, Github ,render

## ローカルでの動作方法※


## 工夫したポイント
カレンダー表のGemをインストールし、見やすいようにレイアウトを工夫した。
マイページからも、自分が提出した希望時間だけ見えるように実装した。
