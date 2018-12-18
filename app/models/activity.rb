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

  def get_comment
    comment = nil
    self.ratings.each do |rating|
      if rating.stars == 5
        comment = rating.comment.split(".")[0]
      end
    end
    if comment == nil
      self.ratings.each do |rating|
        if rating.stars == 4
          comment = rating.comment.split(".")[0]
        end
      end
    end
    if comment == nil
      self.ratings.each do |rating|
        if rating.stars == 3
          comment = rating.comment.split(".")[0]
        end
      end
    end
    if comment == nil
      self.ratings.each do |rating|
        if rating.stars == 2
          comment = rating.comment.split(".")[0]
        end
      end
    end
    if comment == nil
      self.ratings.each do |rating|
        if rating.stars == 1
          comment = rating.comment.split(".")[0]
        end
      end
    end
    if comment == nil
      comment =""
    end
    return comment
  end
end
