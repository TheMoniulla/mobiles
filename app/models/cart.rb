class Cart < ActiveRecord::Base
  validates :user_id, uniqueness: true, presence: true

  belongs_to :user
  has_many :cart_items
  has_many :mobiles, through: :cart_item

  def total_price
    cart_items.inject(0) {|sum, item| sum += item.total_price }
  end

  def total_price_for_display
    "#{total_price} $"
  end
end