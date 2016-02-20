class User < ActiveRecord::Base
  validates :name, :email, :location, :presence => true
  # validates :terms_of_service, acceptance: true
  validates :email, confirmation: true
  # validates :email_confirmation, presence: true
  validates :email, uniqueness: true
  validates :name, length: { minimum: 2 }
  # validates :bio, length: { maximum: 500 }
  # validates :password, length: { in: 6..20 }

  has_many :user_games
  has_many :games, through: :user_games
end
