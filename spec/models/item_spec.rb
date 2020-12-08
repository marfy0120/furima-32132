require 'rails_helper'

RSpec.describe Item, type: :model do


  before do
    @item = FactoryBot.build(:item)
  end
  it "imageが空だと登録できない" do
    @item.image = nil 
    @item.valid?
    expect(@item.errors.full_messages).to include "Image can't be blank"
  end

  it "product_nameが空だと登録できない" do
    
    @item.product_name = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Product name can't be blank"
  end

  it "priceが空だと登録できない" do
    
    @item.price = ""
    
    @item.valid?
    expect(@item.errors.full_messages).to include "Price is not a number"
  end

  it "descriptionが空だと登録できない" do
    
    @item.description = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Description can't be blank"
  end

  it "cost_idが空だと登録できない" do
    
    @item.cost_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Cost can't be blank"
  end

  it "status_idが空だと登録できない" do
    
    @item.status_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Status can't be blank"
  end

  it "day_idが空だと登録できない" do
    
    @item.day_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Day can't be blank"
    end

    it "prefecture_idが空だと登録できない" do
    
      @item.prefecture_id = ""  
      @item.valid?
      expect(@item.errors.full_messages).to include "Prefecture can't be blank"
      end


      it "category_idが空だと登録できない" do
    
        @item.category_id = ""  
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
        end
  
  
end
