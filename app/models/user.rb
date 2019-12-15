class User < ApplicationRecord
validates :userid, {presence:true, uniqueness:true}
validates :password, {presence:true}

end
