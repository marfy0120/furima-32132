class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @items = Item.all.order(created_at: :desc)
    
  end

  def  new
    @item = Item.new
  
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    
  end

  def edit
    @item = Item.find(params[:id])
    
  end

  def update
    @item = Item.find(params[:id])
    if @item.save
      @item.update(item_params)
      redirect_to item_path
      else
        render :show
    end
  end

  private
  def item_params
    params.require(:item).permit(:product_name, :price, :description, :category_id, :prefecture_id, :image, :status_id, :cost_id, :day_id).merge(user_id: current_user.id)
  end
end
