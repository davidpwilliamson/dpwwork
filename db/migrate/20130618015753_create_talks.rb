class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :institution
      t.string :location
      t.date :talk_date

      t.timestamps
    end
  end
end
