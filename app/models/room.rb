class Room < ApplicationRecord
  belongs_to :student
  belongs_to :post

  has_many :messages, dependent: :destroy

  validates :student_id, :uniqueness => {:scope => :post_id}
end
