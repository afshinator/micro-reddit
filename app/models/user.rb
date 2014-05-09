class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true  
  
  has_many :posts
  has_many :comments
end
