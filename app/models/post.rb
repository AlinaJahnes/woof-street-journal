class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, :category, presence: true  
end
