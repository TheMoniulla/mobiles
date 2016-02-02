class Mobile < ActiveRecord::Base
  validates :name, :brand, :price, presence: true
  validates :name, uniqueness: true

  has_many :cart_item
  has_many :carts, through: :cart_item

  def price_for_display
    "#{price} $"
  end
end
