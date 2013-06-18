class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.date :pub_date
      t.text :bibtex
      t.integer :pubtype_id
      t.string :html_title
      t.string :html_authors
      t.string :html_reference

      t.timestamps
    end
  end
end
