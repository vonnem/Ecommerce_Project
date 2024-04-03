class Laptop < ApplicationRecord
  validates :laptop_name, :brand, :model, :price, :processor, :ram, :storage, :operating_system, :gpu, :size, presence: true
  validates :price, :size, numericality: { greater_than: 0 }
  validates :sale_price, numericality: { greater_than: 0 }, allow_nil: true
  attribute :on_off_sale, :boolean, default: false

  has_many :order_items
  has_many :orders, through: :order_items
end
