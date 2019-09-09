class User < ApplicationRecord 
    has_many :channels
    has_many :posts, through: :channels
end