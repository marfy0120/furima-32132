
###   users テーブル

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| nickname                            | string     | null: false       |
| email                               | string     | null: false       |
| user_password                       | string     | null: false       |
| family_name                         | string     | null: false       |
| farst_name                          | string     | null: false       |
| family_name_kana                    | string     | null: false       |
| farst_name_kana                     | string     | null: false       |

### Association

* has_many :orders
* has_many :product

#### product  テーブル


| column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| product_name                        | string     | null: false       |
| price                               | string     | null: false       |
| description                         | text       | null: false       |
| cost                                | string     | null: false       |
| days                                | string     | null: false       |
| prefecture                          | string     | null: false       |
| category                            | string     | null: false       |
| user_id                             | references | foreign_key: true |

### Association

- belongs_to :users

###   orders テーブル

| column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| nickname                            | string     | null: false       |
| product_name                        | references | foreign_key: true |
| user_id                             | references | foreign_key: true |

### Association

- belongs_to :user

###  destination  テーブル


| column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| prefecture                          | string     | null: false       |
| yubin_number                        | string     | null: false       |
| city_number                         | string     | null: false       |
| city                                | string     | null: false       |
| building_name                       | string     | null: false       |
| phone_number                        | string     | null: false       |
| user_id                             | references | foreign_key: true |





