class Listing < ApplicationRecord
    belongs_to :user
    has_many :messages
    # has_many :reviews
end
