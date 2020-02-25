class Post < ApplicationRecord
belongs_to :company

has_many :rooms

validates :place, presence: true
validates :date, presence: true
validates :mxpeople, presence: true
validates :requirement, presence: true
validates :detail, presence: true

end
