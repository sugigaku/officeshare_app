class Message < ApplicationRecord
  belongs_to :room, optional: true
  
  validates :content, presence: true
end
