class Student < ApplicationRecord

 validates :name, presence: true
 validates :email, presence: true, uniqueness: true
 validates :password, presence: true, length:{minimum: 6}

 mount_uploader :icon, IconsUploader

end
