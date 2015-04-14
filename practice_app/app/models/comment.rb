class Comment < ActiveRecord::Base
  belongs_to :project
  belongs_to :task
  has_many :comments
end
