class DropLinks < ActiveRecord::Migration
  def change
  	drop_table :links do |t|
  		t.int :id
  		t.string :url
  		t.int :linktype_id
  		t.timestamps
  	end

  	drop_table :linktypes do |t|
  		t.int :id
  		t.string :name
  		t.timestamps
  	end
  end
end
