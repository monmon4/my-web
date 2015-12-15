class Comment < ActiveRecord::Base
  belongs_to :slide
  belongs_to :user
  belongs_to :document
end
