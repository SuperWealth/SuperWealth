class Investment

  include DataMapper::Resource
  
  belongs_to :user

  belongs_to :asset

  property :id, Serial
  property :price, Float
  property :direction, String
 
end