class CartItemsController < ApplicationController
  before_action :get_user, :get_cart

  def create
    @cart_item = @cart.cart_items.create(cart_item_params)
    redirect_to user_cart_path(@user)
  end

  def destroy
    @cart_item = @cart.cart_items.find(params[:id])
    @cart_item.destroy
    redirect_to user_cart_path(@user)
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end

  def get_cart
    @cart = @user.cart
  end

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :cart_id, :mobile_id)
  end
end