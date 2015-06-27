class Investments

  include DataMapper::Resource
  
  property :investment_id, Serial
  property :user_id,
  property :asset_id, Text
  property :price, Float
  property :direction, String
 
end