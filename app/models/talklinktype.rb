class Talklinktype < ActiveRecord::Base
  attr_accessible :name

  has_many :talklinks
  
end
