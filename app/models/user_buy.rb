class UserBuy
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :prefecture_id, :yubin_number, :city_number, :city, :building_name, :phone_number, :token
  

  with_options presence: true do
  validates :item_id
  validates :user_id
  validates :prefecture_id
  validates :yubin_number, format: { with: /\A\d{3}[-]\d{4}\z/ }
  validates :city_number
  validates :city
  validates :phone_number, format: { with: /\A\d{11}\z/ }
  validates :token
  end

  def save
    buy = Buy.create(item_id: item_id, user_id: user_id)
    
    Address.create(buy_id: buy.id,prefecture_id: prefecture_id, yubin_number: yubin_number, city_number: city_number, city: city, building_name: building_name, phone_number: phone_number)
    
  end
end