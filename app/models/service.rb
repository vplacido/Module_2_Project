class Service < ApplicationRecord
    # belongs_to :user
    belongs_to :seller, :class_name => :User
    has_many :service_categories
    has_many :categories, through: :service_categories
    has_many :reviews

    def print_seller_name
      self.all.map { |s| s.seller.name }
    end 
end


