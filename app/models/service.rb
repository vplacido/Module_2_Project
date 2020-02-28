class Service < ApplicationRecord
    belongs_to :user
    belongs_to :seller, :class_name => :User
    has_many :service_categories
    has_many :categories, through: :service_categories
end
