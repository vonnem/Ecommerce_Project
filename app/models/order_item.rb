class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :laptop

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "laptop_id", "order_id", "quantity", "unit_price", "updated_at"]
  end
end
