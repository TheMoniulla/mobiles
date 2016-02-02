class CartItem < ActiveRecord::Base
  validates :quantity, :cart_id, :mobile_id, presence: true

  belongs_to :cart
  belongs_to :mobile

  def total_price_for_display
    "#{total_price} $"
  end

  def total_price
    mobile.price * quantity
  end
end