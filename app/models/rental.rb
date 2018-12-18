class Rental < ApplicationRecord
  belongs_to :user

  validates :cost, :rental_name, :description, :category, :addressLN1, :state, :city, :zipcode, presence: true
end
