class Province < ApplicationRecord
  validates :province_name, :pst, :gst, :hst, presence: true
  validates :province_name, uniqueness: true

  has_many :users
end
