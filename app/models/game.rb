class Game < ActiveRecord::Base
  validates :sport, :presence => true
  validates :sport, length: { minimum: 2 }

  has_many :user_games
  has_many :users, through: :user_games
  has_many :chats

  geocoded_by :address
  after_validation :geocode
end
