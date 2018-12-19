class Category < ApplicationRecord
  validates :category_name, presence: true
  validates :category_name, uniqueness: true

  has_many :tags

  belongs_to :user

  has_many :activities,
    through: :tags,
    source: :activity

end
