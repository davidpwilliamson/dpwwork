class CreateTalklinktypes < ActiveRecord::Migration
  def change
    create_table :talklinktypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
