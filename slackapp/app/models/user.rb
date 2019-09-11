class User < ApplicationRecord 
    has_secure_password
    has_many :channels
    has_many :posts, through: :channels
end