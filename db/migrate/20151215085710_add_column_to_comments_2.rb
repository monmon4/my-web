class AddColumnToComments2 < ActiveRecord::Migration
  def change
    add_reference :comments, :document, index: true, foreign_key: true
  end
end
