class Post < ApplicationRecord
    belongs_to :channel
    belongs_to :user
end