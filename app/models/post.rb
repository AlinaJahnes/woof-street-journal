class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :catagory
  validates :title, :body, presence: true  

  extend FriendlyId
  friendly_id :title
end
