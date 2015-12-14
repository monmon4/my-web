class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :path
      t.string :like
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
