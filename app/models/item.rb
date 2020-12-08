class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  

  belongs_to :user
  has_one :order
  has_one_attached :image
  belongs_to :category
  belongs_to :cost
  belongs_to :day
  belongs_to :prefecture
  belongs_to :status


  validates :image, presence: true
  validates :category, presence: true
  validates :cost, presence: true
  validates :day, presence: true
  validates :prefecture, presence: true
  validates :status, presence: true
  validates :product_name, presence: true
  validates :description, presence: true
  validates :price, numericality: {greater_than: 299, less_than: 9999999}
 
end
