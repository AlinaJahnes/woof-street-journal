class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  validates :username, uniqueness: true, presence: true
  validates :password, presence: true, on: :create

  has_attached_file :avatar, styles: { thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
