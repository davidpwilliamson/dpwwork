class CreatePublinks < ActiveRecord::Migration
  def change
    create_table :publinks do |t|
      t.string :url
      t.string :publinktype_id

      t.timestamps
    end
  end
end
