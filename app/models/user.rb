class User < ApplicationRecord
  # belongs_to :seller
  has_many :services, :foreign_key => "seller_id"
  has_many :listings
  has_many :reviews, through: :listings 
  has_secure_password
  # def 

  # end 

  # def is seller
  # go through the services class to find all seller
  # compare seller_id with this user_id 
  # return true if the user is a seller
  # false is user is not a seller and make the user a seller
end
