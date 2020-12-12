require 'rails_helper'

RSpec.describe UserBuy, type: :model do

  before do
    
     @user = FactoryBot.create(:user)
     @user2 = FactoryBot.create(:user)
     @item = FactoryBot.build(:item)
     @item.image = fixture_file_upload('app/assets/images/comment.png')
     @item.save
    @user_buy = FactoryBot.build(:user_buy, item_id: @item.id, user_id: @user.id)
    sleep(1)
  end
  context "正常系です" do
    it "内容に問題がない" do
      expect(@user_buy).to be_valid
    end
  end
  context "異常系です" do


  
  
  it "prefecture_idが空だと登録できない" do
    @user_buy.prefecture_id = "" 
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include "Prefecture can't be blank"
  end

  it "city_numberが空だと登録できない" do
    @user_buy.city_number = "" 
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include "City number can't be blank"
  end

  it "cityが空だと登録できない" do
    @user_buy.city = "" 
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include "City can't be blank"
  end

  it "phone_numberが空だと登録できない" do
    @user_buy.phone_number = "" 
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include "Phone number can't be blank"
  end



  it "tokenが空では登録できないこと" do
    @user_buy.token = ""
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include("Token can't be blank")
  end

  it "yubin_numberが空だと登録できない" do
    @user_buy.yubin_number = nil
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include "Yubin number can't be blank"
  end

  it "yubin_numberにハイフンがないと登録できない" do
    @user_buy.yubin_number = "1111111"
    @user_buy.valid?
    expect(@user_buy.errors.full_messages).to include "Yubin number is invalid"
  end

  


  end
  end
  