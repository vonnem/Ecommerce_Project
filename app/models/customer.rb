class Customer < ApplicationRecord
  belongs_to :region

  validates :firstName, lastName, email, address, presence: true
  validates :
end
