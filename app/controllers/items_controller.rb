class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :edit]
  before_action :move_to_index, only: [:edit]
  before_action :set_item, only: [:edit, :show, :update, :destroy]
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
    
  end

  def edit
    return redirect_to root_path if user_signed_in? && current_user.id != @item.user_id
    
  end

  def update
    @item.update(item_params)
    return redirect_to item_path if @item.valid?
    
    render :edit
    
  end

  def destroy
    if user_signed_in? && current_user.id
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
    
  


  private
  def item_params
    params.require(:item).permit(:product_name, :price, :description, :category_id, :prefecture_id, :image, :status_id, :cost_id, :day_id).merge(user_id: current_user.id)
  end

  def set_tweet
    @item = Item.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
