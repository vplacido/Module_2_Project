class Category < ApplicationRecord
    has_many :listing_categories
    has_many :service_categories
    
end
