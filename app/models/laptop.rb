class Laptop < ApplicationRecord
  validates :laptop_name, :brand, :model, :price, :sale_price, :on_off_sale, :processor_brand, :processor_name, :ram, :ssd, :hdd, :operating_system, presence: true
  validates :laptop_name, uniqueness: true
  attribute :on_off_sale, :boolean, default: false

  has_many :order_items
  has_many :orders, through: :order_items
end
