class Activity < ApplicationRecord
  belongs_to :user
  #has many attributes
  validates :user_id, presence: true
  validates :content, presence: true, length: { minimum: 1 }

  # mount_uploader :picture, PictureUploader
  default_scope -> { order(created_at: :desc) }
end
