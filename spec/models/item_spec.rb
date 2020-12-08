require 'rails_helper'

RSpec.describe Item, type: :model do

  before do
    @item = FactoryBot.build(:item)
  end
  context "正常系です" do
    it "内容に問題がない" do
      expect(@item).to be_valid
    end
  end
  context "異常系です" do


  
  
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
    expect(@item.errors.full_messages).to include "Cost is not a number"
  end

  it "status_idが空だと登録できない" do
    
    @item.status_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Status is not a number"
  end

  it "day_idが空だと登録できない" do
    
    @item.day_id = ""  
    @item.valid?
    expect(@item.errors.full_messages).to include "Day is not a number"
    end

    it "prefecture_idが空だと登録できない" do
    
      @item.prefecture_id = ""  
      @item.valid?
      expect(@item.errors.full_messages).to include "Prefecture is not a number"
      end


      it "category_idが空だと登録できない" do
    
        @item.category_id = ""  
        @item.valid?
        expect(@item.errors.full_messages).to include "Category is not a number"
        end

        it "priceが全角文字だと登録できない" do
    
          @item.price = "あああああ"  
          @item.valid?
          expect(@item.errors.full_messages).to include "Price is not a number"
          end

          it "priceが半角英数字混合だと登録できない" do
    
            @item.price = "aaaa11111"  
            @item.valid?
            expect(@item.errors.full_messages).to include "Price is not a number"
            end

            it "priceが半角英語だと登録できない" do
    
              @item.price = "aaaaaaa"  
              @item.valid?
              expect(@item.errors.full_messages).to include "Price is not a number"
              end

          it "priceが299円以下だと登録できない" do
    
              @item.price = 299
              @item.valid?
              expect(@item.errors.full_messages).to include "Price must be greater than 299"
              end

              it "priceが10000000円以上だと登録できない" do
    
                @item.price = 10000000 
                @item.valid?
                expect(@item.errors.full_messages).to include "Price must be less than 9999999"
                end


          it "cost_idは0以外出ないと登録できない" do
    
            @item.cost_id = 0
            @item.valid?
            expect(@item.errors.full_messages).to include "Cost must be other than 0"
            end

            it "status_idは0以外出ないと登録できない" do
    
              @item.status_id = 0
              @item.valid?
              expect(@item.errors.full_messages).to include "Status must be other than 0"
              end

              it "day_idは0以外出ないと登録できない" do
    
                @item.day_id = 0
                @item.valid?
                expect(@item.errors.full_messages).to include "Day must be other than 0"
                end

                it "prefecture_idは0以外出ないと登録できない" do
    
                  @item.prefecture_id = 0
                  @item.valid?
                  expect(@item.errors.full_messages).to include "Prefecture must be other than 0"
                  end

                  it "category_idは0以外出ないと登録できない" do
    
                    @item.category_id = 0
                    @item.valid?
                    expect(@item.errors.full_messages).to include "Category must be other than 0"
                    end
  
  
end
end
