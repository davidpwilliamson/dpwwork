class Publinktype < ActiveRecord::Base
  attr_accessible :name

  has_many :publinks
end
