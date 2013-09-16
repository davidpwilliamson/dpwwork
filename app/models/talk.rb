class Talk < ActiveRecord::Base
  attr_accessible :institution, :location, :talk_date, :title

  has_many :talklinks
end
