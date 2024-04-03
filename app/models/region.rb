class Region < ApplicationRecord
  validates :region_name, :tax_rate, presence: true
  validates :region_name, uniqueness: true

  has_many :customers
end
