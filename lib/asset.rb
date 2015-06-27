class Asset

  include DataMapper::Resource
  


  has 1, :investment

  property :id, Serial
  property :name, String
  property :price, Float

 
end