class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, :category, presence: true  

  def first_image
    /img\s+[^>]*src\s*=\s*"(.+?)"/.match(self.body)
  end

  def banner_category
    case 
    when self.category == "life"
      return "life"
    when self.category == "discover"
      return "discover"
    when self.category == "humor"
      return "humor"
    when self.category == "travel"
      return "travel"
    when self.category == "good"
      return "good"  
    end
  end

end
