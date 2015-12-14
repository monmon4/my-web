class ChangeSlides < ActiveRecord::Migration
  change_table :slides do |t|
  t.change :like, :integer
end
end
