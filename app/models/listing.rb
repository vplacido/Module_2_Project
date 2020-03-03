class Listing < ApplicationRecord
    belongs_to :user
    has_many :listing_categories
    has_many :categories, through: :listing_categories
    # has_many :reviews
end
