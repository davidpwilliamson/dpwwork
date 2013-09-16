class AddNoteToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :note, :string
  end
end
