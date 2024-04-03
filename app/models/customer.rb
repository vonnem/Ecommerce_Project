class Customer < ApplicationRecord
  belongs_to :region

  validates :first_name, :last_name, :email, :address, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 6}
end
