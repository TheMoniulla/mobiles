class CartController < ApplicationController
  before_action :get_user

  def show
    @cart_items = @user.cart.cart_items
  end

  def get_user
    @user = User.find(params[:user_id])
  end
end