class Publink < ActiveRecord::Base
  attr_accessible :publinktype_id, :url, :publication_id

  belongs_to :publication
  belongs_to :publinktype

end
