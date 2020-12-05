class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :cost, :day, :prefecture, :status

  belongs_to :user
  has_one :order
  has_one_attached :image
end
