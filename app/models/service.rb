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
      Service.where(:title => 'LIKE ?')
    else
      Service.all
    end
    #   category = Category.find_by(name: search)
    #   if category 
    #     self.where(category_ids: category)
    #   else 
    #     Service.all 
    #   end
    # else
    #   Service.all 
    # end
  end
  
  # class method to select the services the seller does not own to allow them to purchase the service
  def self.selectAllExcept(user)
    newArr = Service.all.select{|s| s.seller_id != user }
    cartArr = Cart.all.select{|c| c.user_id == user }
    cartArr = cartArr.map{|c| c.service_id }
    newArr = newArr.select{|s| !cartArr.include?(s.id)}
    newArr
  end

  def self.selectAll(user)
    newArr = Service.all.select{|s| s.seller_id != user }
    cartArr = Cart.all.select{|c| c.user_id == user }
    cartArr = cartArr.map{|c| c.service_id }
    newArr = newArr.select{|s| cartArr.include?(s.id)}
    newArr
  end
end


