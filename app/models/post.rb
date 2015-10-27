class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, :category, presence: true  

  def first_image
    /img\s+[^>]*src\s*=\s*"(.+?)"/.match(self.body)
  end

end
