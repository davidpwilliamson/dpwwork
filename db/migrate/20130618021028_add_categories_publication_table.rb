class AddCategoriesPublicationTable < ActiveRecord::Migration
  def create
  	create_table :categories_publications, :id => false do |t|
  		t.integer :category_id, :null => false
  		t.integer :publication_id, :null => false
  	end
  end
end
