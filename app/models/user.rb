class User < ApplicationRecord

  attr_accessor :remember_token, :activation_token
  # before_save :downcase_email
  # before_create :confirmation_token
  has_many :activities, dependent: :destroy

  has_many :rental_tickets
  has_many :rented_items,
    through: :rental_tickets,
    source: :rental

  has_many :activity_tickets
  has_many :events,
    through: :activity_tickets,
    source: :activity



  has_many :ratings
  has_many :rentals
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true


def User.digest(string)
   cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                 BCrypt::Engine.cost
   BCrypt::Password.create(string, cost: cost)
 end
 # Returns a random token.

 def User.new_token
   SecureRandom.urlsafe_base64
 end

 # Remembers a user in the database for use in persistent sessions.
 def remember
   self.remember_token = User.new_token
   update_attribute(:remember_digest, User.digest(remember_token))
 end

 def authenticated?(remember_token)
   return false if remember_digest.nil?
   BCrypt::Password.new(remember_digest).is_password?(remember_token)
 end

   # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
  end

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)

    # def downcase_email
    #   self.email = email.downcase
    # end


  private

# def confirmation_token
#   if self.confirm_token.blank?
#     self.confirm_token.blank = SecureRandom.urlsafe_based64.to_s
#   end
# end
end
