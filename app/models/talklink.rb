class Talklink < ActiveRecord::Base
  attr_accessible :talklinktype_id, :url

  belongs_to :talk
  belongs_to :talklinktype
  
end
