class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
         validates :nickname
         validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
         validates :farst_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
         validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
         validates :farst_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
         validates :birthday
         end
end
