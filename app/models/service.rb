class Service < ApplicationRecord
    # belongs_to :user
    belongs_to :seller, :class_name => :User
    has_many :service_categories
    has_many :categories, through: :service_categories
    has_many :reviews
    has_many :carts

    def print_seller_name
      self.all.map { |s| s.seller.name }
    end 

    def create_review
      self.reviews
    end 

    def self.search(search)
      if search
        category = Category.find_by(name: search)
        if category 
          self.where(category_ids: category)
        else 
          Service.all 
        end
      else
        Service.all 
      end
    end
end


