class CreatePublinktypes < ActiveRecord::Migration
  def change
    create_table :publinktypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
