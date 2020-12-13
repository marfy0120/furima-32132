class BuysController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :set_item
  before_action :move_to_index, only: [:index]
  
  def index
    @user_buy = UserBuy.new
    
    
  end
  
  def new
    @user_buy = UserBuy.new
    
  end

  def create
    @user_buy = UserBuy.new(user_buy_params)
    
    if @user_buy.valid?
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @item.price,  
        card: user_buy_params[:token],    
        currency: 'jpy'                 
      )
      @user_buy.save
      redirect_to root_path
    else
      render :index
    end
  end
  private
  def user_buy_params
    params.require(:user_buy).permit(:prefecture_id, :yubin_number, :city_number, :city, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def move_to_index
    redirect_to root_path if current_user.id == @item.user_id
  end
end
