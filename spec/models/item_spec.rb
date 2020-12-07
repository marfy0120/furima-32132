require 'rails_helper'

RSpec.describe Item, type: :model do


  before do
    @item = FactoryBot.build(:item)
  end
  it "imageが空だと登録できない" do
    
    @item.image = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
  end

  it "product_nameが空だと登録できない" do
    
    @item.product_name = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
  end

  it "priceが空だと登録できない" do
    
    @item.price = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
  end

  it "descriptionが空だと登録できない" do
    
    @item.description = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
  end

  it "cost_idが空だと登録できない" do
    
    @item.cost_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
  end

  it "status_idが空だと登録できない" do
    
    @item.status_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
  end

  it "day_idが空だと登録できない" do
    
    @item.day_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "User must exist"
    end

    it "prefecture_idが空だと登録できない" do
    
      @item.prefecture_id = ""  
      @item.valid?
      expect(@item.errors.full_messages).to include "User must exist"
      end


      it "category_idが空だと登録できない" do
    
        @item.category_id = ""  
        @item.valid?
        expect(@item.errors.full_messages).to include "User must exist"
        end

        it "category_idが空だと登録できない" do
    
          @item.category_id = ""  
          @item.valid?
          expect(@item.errors.full_messages).to include "User must exist"
          end
  
  
end
