class Blogs < ActiveRecord::Base
  validates :title, presence: true
end
