class Slide < ActiveRecord::Base
  belongs_to :document
  has_many :comments
  has_and_belongs_to_many :users
end
