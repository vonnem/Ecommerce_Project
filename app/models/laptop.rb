class Laptop < ApplicationRecord
  validates :laptop_name, :brand, :model, :price, :processor, :ram, :storage, :operating_system, :gpu, :size, presence: true
  validates :price, :size, numericality: { greater_than_or_equal_to: 0 }
  validates :sale_price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  attribute :on_off_sale, :boolean, default: false
  has_one_attached :image

  has_many :order_items
  has_many :orders, through: :order_items
  def self.ransackable_associations(auth_object = nil)
    ["order_items", "orders"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["brand", "created_at", "gpu", "id", "id_value", "laptop_name", "model", "on_off_sale", "operating_system", "price", "processor", "ram", "sale_price", "size", "storage", "updated_at", "image_attachment_id_eq", "image_blob_id_eq"]
  end


end
