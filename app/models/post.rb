class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, :category, presence: true  

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
end
