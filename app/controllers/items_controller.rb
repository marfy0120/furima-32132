class ItemsController < ApplicationController
  def index
    @items = Item.order("created_at DESC")
    
  end

  def  new
    @item = Item.new
  
  end

  def create
    Item.create(item_params)
    
  end
end
