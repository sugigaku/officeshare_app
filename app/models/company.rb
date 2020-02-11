class Company < ApplicationRecord
validates :name, presence: true
validates :email, presence: true, uniqueness: true
validates :password, presence: true, length:{minimum: 6}

has_many :posts, dependent: :destroy


mount_uploader :icon, IconsUploader
end
