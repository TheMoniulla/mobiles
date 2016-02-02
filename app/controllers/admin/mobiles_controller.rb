class Admin::MobilesController < Admin::AdminController
  before_action :get_mobile, only: [:show, :edit, :update, :destroy]

  def new
    @mobile = Mobile.new
  end

  def index
    @mobiles = Mobile.all
  end

  def show
  end

  def edit
  end

  def create
    @mobile = Mobile.new(mobile_params)
    if @mobile.save
      redirect_to admin_mobiles_path
    else
      render :new
    end
  end

  def update
    if @mobile.update_attributes(mobile_params)
      redirect_to admin_mobiles_path
    else
      render :edit
    end
  end

  def destroy
    @mobile.destroy
    redirect_to admin_mobiles_path
  end

  private

  def get_mobile
    @mobile = Mobile.find(params[:id])
  end

  def mobile_params
    params.require(:mobile).permit(:name, :brand, :touchscreen, :weight, :display_size, :price)
  end
end
