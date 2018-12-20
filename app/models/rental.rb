class Rental < ApplicationRecord
  belongs_to :user

  # belongs_to :owner,
  #   class_name: "User",
  #   foreign_key: :user_id,
  #   primary_key: :id
  #
  # belongs_to :renter,
  #   class_name: "user",
  #   foreign_key: :user_id,
  #   primary_key: :id

  validates :cost, :contact_email, :rental_name, :description, :addressLN1, :state, :city, :zipcode, presence: true
end
