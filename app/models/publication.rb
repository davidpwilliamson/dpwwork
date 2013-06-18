class Publication < ActiveRecord::Base
  attr_accessible :bibtex, :html_authors, :html_reference, :html_title, :pub_date, :pubtype_id
end
