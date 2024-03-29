class Search
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :query

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
end
