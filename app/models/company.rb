class Company < ApplicationRecord

has_many :posts, dependent: :destroy

mount_uploader :icon, IconsUploader
end
