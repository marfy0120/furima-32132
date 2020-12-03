###   users テーブル

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| nickname                            | string     | null: false       |
| email                               | string     | null: false       |
| encrypted_password                  | string     | null: false       |
| family_name                         | string     | null: false       |
| farst_name                          | string     | null: false       |
| family_name_kana                    | string     | null: false       |
| farst_name_kana                     | string     | null: false       |
| birthday                            | date       | null: false       |

### Association

* has_many :orders
* has_many :products

### product  テーブル


| column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| product_name                        | string     | null: false       |
| price                               | integer    | null: false       |
| description                         | text       | null: false       |
| cost_id                             | integer    | null: false       |
| status_id                           | integer    | null: false       |
| days_id                             | integer    | null: false       |
| prefecture_id                       | integer    | null: false       |
| category_id                         | integer    | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :order

###   orders テーブル

| column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| product                     　　　   | references | foreign_key: true |
| user                                | references | foreign_key: true |

### Association


- has_one :product
- has_one :destination


###  destination  テーブル


| column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| prefecture_id                       | integer    | null: false       |
| yubin_number                        | string     | null: false       |
| city_number                         | string     | null: false       |
| city                                | string     | null: false       |
| building_name                       | string     |                   |
| phone_number                        | string     | null: false       |
| user                                | references | foreign_key: true |

- belongs_to :order




