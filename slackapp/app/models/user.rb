class User < ApplicationRecord 
    has_secure_password
    has_many :channels
    has_many :posts, through: :channels

    # has_many :dms, foreign_key:  :user1
    # has_many :messages #, through: :dms
end