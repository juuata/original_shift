# README

## アプリケーション名  ORIGINAL SHIFT

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
%3CmxGraphModel%3E%3Croot%3E%3CmxCell%20id%3D%220%22%2F%3E%3CmxCell%20id%3D%221%22%20parent%3D%220%22%2F%3E%3CmxCell%20id%3D%222%22%20value%3D%22users%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BfillColor%3Dnone%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22200%22%20y%3D%2240%22%20width%3D%22140%22%20height%3D%22208%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%223%22%20value%3D%22name%26%2310%3B%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%224%22%20value%3D%22email%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%2252%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%225%22%20value%3D%22password%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%2278%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%226%22%20value%3D%22family_name%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%22104%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%227%22%20value%3D%22first_name%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%22130%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%228%22%20value%3D%22family_name_kana%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%22156%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%229%22%20value%3D%22first_name_kana%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%22182%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2210%22%20value%3D%22posts%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BfillColor%3Dnone%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22440%22%20y%3D%2253%22%20width%3D%22140%22%20height%3D%2278%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2211%22%20value%3D%22desired_time%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%2210%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2212%22%20value%3D%22start_time%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%2210%22%3E%3CmxGeometry%20y%3D%2252%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2213%22%20value%3D%22comments%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BfillColor%3Dnone%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22440%22%20y%3D%22248%22%20width%3D%22140%22%20height%3D%22104%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2214%22%20value%3D%22text%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%2213%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2215%22%20value%3D%22post_id%26%2310%3B%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%2213%22%3E%3CmxGeometry%20y%3D%2252%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2216%22%20value%3D%22user_id%26%2310%3B%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3Balign%3Dleft%3BverticalAlign%3Dtop%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3B%22%20vertex%3D%221%22%20parent%3D%2213%22%3E%3CmxGeometry%20y%3D%2278%22%20width%3D%22140%22%20height%3D%2226%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2217%22%20style%3D%22edgeStyle%3Dnone%3Bhtml%3D1%3BendArrow%3DERoneToMany%3BendFill%3D0%3BstartArrow%3DERone%3BstartFill%3D0%3BendSize%3D15%3BstartSize%3D15%3B%22%20edge%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20relative%3D%221%22%20as%3D%22geometry%22%3E%3CmxPoint%20x%3D%22441%22%20y%3D%2279%22%20as%3D%22targetPoint%22%2F%3E%3CArray%20as%3D%22points%22%3E%3CmxPoint%20x%3D%22350%22%20y%3D%2280%22%2F%3E%3C%2FArray%3E%3CmxPoint%20x%3D%22340%22%20y%3D%2280%22%20as%3D%22sourcePoint%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2218%22%20style%3D%22edgeStyle%3Dnone%3Brounded%3D1%3Bhtml%3D1%3BentryX%3D0%3BentryY%3D0.5%3BentryDx%3D0%3BentryDy%3D0%3BstartArrow%3DERone%3BstartFill%3D0%3BendArrow%3DERoneToMany%3BendFill%3D0%3BstartSize%3D15%3BendSize%3D15%3BsourcePerimeterSpacing%3D0%3BexitX%3D0.566%3BexitY%3D1%3BexitDx%3D0%3BexitDy%3D0%3BexitPerimeter%3D0%3B%22%20edge%3D%221%22%20source%3D%229%22%20target%3D%2215%22%20parent%3D%221%22%3E%3CmxGeometry%20relative%3D%221%22%20as%3D%22geometry%22%3E%3CArray%20as%3D%22points%22%3E%3CmxPoint%20x%3D%22279%22%20y%3D%22290%22%2F%3E%3CmxPoint%20x%3D%22279%22%20y%3D%22313%22%2F%3E%3C%2FArray%3E%3CmxPoint%20x%3D%22230%22%20y%3D%22270%22%20as%3D%22sourcePoint%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3C%2Froot%3E%3C%2FmxGraphModel%3E

## 開発環境
HTML, CSS, Ruby on rails, Github ,render

## ローカルでの動作方法※


## 工夫したポイント
カレンダー表のGemをインストールし、見やすいようにレイアウトを工夫した。
マイページからも、自分が提出した希望時間だけ見えるように実装した。
