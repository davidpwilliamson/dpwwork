class Publication < ActiveRecord::Base
  attr_accessible :bibtex, :html_authors, :html_reference, :html_title, :pub_date, :pubtype_id, :publinks_attributes, :category_ids

  has_many :publinks
  has_and_belongs_to_many :categories
  belongs_to :pubtype

  accepts_nested_attributes_for :publinks, :allow_destroy => true
end
