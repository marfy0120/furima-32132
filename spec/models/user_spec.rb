require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it "nicknameが空だと登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.nickname = ""  # nicknameの値を空にする
      user.valid?
      expect(user.errors.full_messages).to include "Nickname can't be blank"
    end
    it "emailが空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.email = ""  # emailの値を空にする
      user.valid?
      expect(user.errors.full_messages).to include "Email can't be blank"
    end
    it "名字が空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.family_name = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Family name can't be blank"
    end

    it "名前が空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.farst_name = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Farst name can't be blank"
    end

    it "名字カナが空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.family_name_kana = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Family name kana can't be blank"
    end

    it "名前カナが空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.farst_name_kana = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Farst name kana can't be blank"
    end

    it "パスワードが空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.password = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Password can't be blank"
    end

    it "パスワード2が空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.password_confirmation = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Password confirmation doesn't match Password"
    end

    it "誕生日が空では登録できない" do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.birthday = ""  
      user.valid?
      expect(user.errors.full_messages).to include "Birthday can't be blank"
    end



  end
end