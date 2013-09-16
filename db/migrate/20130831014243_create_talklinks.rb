class CreateTalklinks < ActiveRecord::Migration
  def change
    create_table :talklinks do |t|
      t.string :url
      t.integer :talklinktype_id

      t.timestamps
    end
  end
end
