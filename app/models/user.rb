class User < ActiveRecord::Base
  validates :name, presence: true
  after_create :add_cart

  has_one :cart
  has_many :cart_items, through: :cart

  def to_s
    name
  end

  private

  def add_cart
    create_cart unless cart
  end
end
