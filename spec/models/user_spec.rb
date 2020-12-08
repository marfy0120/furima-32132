require 'rails_helper'
RSpec.describe User, type: :model do
  
    before do
      @user = FactoryBot.build(:user)
    end
    context "正常系です" do
      it "内容に問題がない" do
        expect(@user).to be_valid
      end
    end
    context "異常系です" do
    
    it "nicknameが空だと登録できない" do
      
      @user.nickname = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it "emailが空では登録できない" do
  
      @user.email = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end
    it "名字が空では登録できない" do
      
      @user.family_name = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name can't be blank"
    end

    it "名前が空では登録できない" do
      
      @user.farst_name = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Farst name can't be blank"
    end

    it "名字カナが空では登録できない" do
      
      @user.family_name_kana = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name kana can't be blank"
    end

    it "名前カナが空では登録できない" do
      
      @user.farst_name_kana = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Farst name kana can't be blank"
    end

    it "パスワードが空では登録できない" do
      
      @user.password = "" 
      @user.valid?
      expect(@user.errors.full_messages).to include "Password can't be blank"
    end

    it "パスワード2が空では登録できない" do
      
      @user.password_confirmation = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
    end

    it "誕生日が空では登録できない" do
      
      @user.birthday = ""  
      @user.valid?
      expect(@user.errors.full_messages).to include "Birthday can't be blank"
    end

    it "passwordが5文字以下であれば登録できない" do
      @user.password = "00000"
      @user.password_confirmation = "00000"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it "重複したemailが存在する場合登録できない" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end

    it "passwordが存在してもpassword_confirmationが空では登録できない" do
      @user.password_confirmation = "hghg"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "パスワードが半角英字のみの場合では登録できない" do
      
      @user.password = "aaasss" 
      @user.password_confirmation = "aaasss"
      @user.valid?
      expect(@user.errors.full_messages).to include "Password is invalid"
    end

    it "パスワードが半角数字のみの場合では登録できない" do
      
      @user.password = "121212" 
      @user.password_confirmation = "121212"
      @user.valid?
      expect(@user.errors.full_messages).to include "Password is invalid"
    end

    it "emailに@がないと登録できない" do
  
      @user.email = "assdafafag1112323" 
      @user.valid?
      expect(@user.errors.full_messages).to include "Email is invalid"
    end

    it "名字が全角以外登録できない" do
      
      @user.family_name = "aaaaaaaa"  
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name is invalid"
    end

    it "名前が全角以外登録できない" do
      
      @user.farst_name = "aaaaaadfghjkljhghj"  
      @user.valid?
      expect(@user.errors.full_messages).to include "Farst name is invalid"
    end

    it "名字が全角カタカナ以外登録できない" do
      
      @user.family_name = "dsdsdsdsd"  
      @user.valid?
      expect(@user.errors.full_messages).to include "Family name is invalid"
    end

    it "名前が全角カタカナ以外登録できない" do
      
      @user.farst_name = "aaaaaadfghjkljhghj"  
      @user.valid?
      expect(@user.errors.full_messages).to include "Farst name is invalid"
    end

   



  end
  end