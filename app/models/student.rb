class Student < ApplicationRecord
 mount_uploader :icon, IconsUploader

 has_many :rooms

 validates :name, presence: true
 validates :email, presence: true, uniqueness: true
 validates :password, presence: true, length:{minimum: 6}

end
