class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true
         validates :family_name, presence: true
         validates :farst_name, presence: true
         validates :family_name_kana, presence: true
         validates :farst_name_kana, presence: true
         validates :birthday, presence: true
end
