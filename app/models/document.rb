class Document < ActiveRecord::Base
  belongs_to :user
  has_many :slides
  has_many :comments
end
