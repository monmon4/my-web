class Slide < ActiveRecord::Base
  belongs_to :document
  has_many :comments
end
