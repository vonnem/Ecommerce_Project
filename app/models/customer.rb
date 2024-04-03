class Customer < ApplicationRecord
  belongs_to :region

  validates :firstName, :lastName, :email, :address, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 6}
end
