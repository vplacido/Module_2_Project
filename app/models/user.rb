class User < ApplicationRecord
  belongs_to :seller
  has_many :services, through: :foriegn_key => "seller_id"
  has_many :listings
  has_many :reviews, through: :listings 
end
