class MobilesController < ApplicationController
  before_action :get_user

  def index
    @mobiles = Mobile.all
  end

  def show
    @mobile = Mobile.find(params[:id])
    @cart_item = @user.cart_items.new
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end
end
