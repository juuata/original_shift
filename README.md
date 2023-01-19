# README

## usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |

### Association

- has_many :posts
- has_many :comments



## postsテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| desired_time       | integer    | null: false                    |
| start_time         | datetime   | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user



## commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user