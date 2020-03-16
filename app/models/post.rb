class Post < ApplicationRecord

validates :place, presence: true
validates :date, presence: true
validates :mxpeople, presence: true
validates :requirement, presence: true
validates :detail, presence: true

belongs_to :company
end
