class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  

  belongs_to :user
  has_one :buy
  has_one_attached :image
  belongs_to :category
  belongs_to :cost
  belongs_to :day
  belongs_to :prefecture
  belongs_to :status

  with_options presence: true do
    validates :image
    validates :product_name
    validates :description
  end
  
validates :price, numericality: {greater_than: 299, less_than: 9999999}
  PASSWORD_REGEX = /\A[-]?[0-9]+(\.[0-9]+)?\z/.freeze
validates_format_of :price, with: PASSWORD_REGEX

with_options numericality: { other_than: 0 } do
  validates :category_id
  validates :cost_id 
  validates :day_id
  validates :prefecture_id
  validates :status_id
end

 
end
