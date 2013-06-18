class ActualCategoryPubTable < ActiveRecord::Migration
	def change
	 	create_table :categories_publications, :id => false do |t|
  			t.integer :category_id, :null => false
  			t.integer :publication_id, :null => false
  		end
  	end
end
