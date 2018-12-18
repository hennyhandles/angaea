class Activity < ApplicationRecord
  belongs_to :user
  has_many :ratings
  #has many attributes
  validates :user_id, presence: true
  validates :content, presence: true, length: { minimum: 1 }

  # mount_uploader :picture, PictureUploader
  default_scope -> { order(created_at: :desc) }

  def get_average_rating
    average = 0
    self.ratings.each {|rating| average += rating.stars}
    return (average/self.ratings.length).round
  end
end
