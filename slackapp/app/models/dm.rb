class Dm < ApplicationRecord
    has_many :users
    has_many :messages #, through: :users
end

