class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.references :slide, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
