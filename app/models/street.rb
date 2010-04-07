class Street < ActiveRecord::Base

  validates_presence_of :name, :price, :available, :modules

end

