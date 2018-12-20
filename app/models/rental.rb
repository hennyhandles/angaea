class Rental < ApplicationRecord
  belongs_to :user
  has_many :rental_tickets
  has_many :renters,
    through: :rental_tickets,
    source: :user

  validates :cost, :contact_email, :rental_name, :description, :addressLN1, :state, :city, :zipcode, presence: true
end
