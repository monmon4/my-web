class CreateSlidesUsers < ActiveRecord::Migration
  def change
    create_table :slides_users, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.references :slide, index: true, foreign_key: true
    end
  end
end
