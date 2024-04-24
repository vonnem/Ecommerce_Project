class Order < ApplicationRecord
  has_many :order_items
  has_many :laptops, through: :order_items

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "order_date", "total", "updated_at"]
  end

end
