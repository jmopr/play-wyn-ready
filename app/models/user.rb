class User < ActiveRecord::Base
  before_save { email.downcase! }
  validates :name, presence: true, length: { in: 3..30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, confirmation: true, format: { with: VALID_EMAIL_REGEX}
  validates :email, length: { maximum: 100 }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  has_secure_password

  has_many :user_games
  has_many :games, through: :user_games
  has_many :chats

  geocoded_by :address
  after_validation :geocode
end
