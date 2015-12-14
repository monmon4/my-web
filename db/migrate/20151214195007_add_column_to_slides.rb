class AddColumnToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :number, :integer
  end
end
