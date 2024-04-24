class Province < ApplicationRecord
  validates :province_name, :pst, :gst, :hst, presence: true
  validates :province_name, uniqueness: true

  has_many :users

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "gst", "hst", "id", "id_value", "province_name", "pst", "updated_at"]
  end

  def to_s
    province_name
  end

end
