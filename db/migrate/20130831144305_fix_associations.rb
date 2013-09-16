class FixAssociations < ActiveRecord::Migration
  def change
  	add_column :publinks, :publication_id, :integer
  	add_column :talklinks, :talk_id, :integer
  end
end
