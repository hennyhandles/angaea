class Activity < ApplicationRecord
  belongs_to :user
  has_many :ratings
  has_many :tags
  has_many :categories,
    through: :tags,
    source: :category
  #has many attributes
  validates :user_id, :activity_name, :cost, :city, :addressLN1, :state, :zip, :content, presence: true
  validates :content, presence: true, length: { minimum: 1 }

  # mount_uploader :picture, PictureUploader
  default_scope -> { order(created_at: :desc) }
  # get average rating
  def get_average_rating
    average = 0
    if self.ratings.any?
      self.ratings.each {|rating| average += rating.stars}
      return (average/self.ratings.length).round
    end
    return 0 
  end
  # get highest rated comments
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
  # categorize activities by category
  def self.categorize_activities
    categories_hash = {
      "dance" => [],
      "music" => [],
      "art" => []
    }
    self.all.each do |activity|
      categories_hash[activity.categories[0].category_name].push(activity)
    end
    return categories_hash
  end
end
