class Chat < ActiveRecord::Base
  validates :comment, :presence => true
  # validates :comment, length: { in: 10..100 }
  belongs_to :game
end
