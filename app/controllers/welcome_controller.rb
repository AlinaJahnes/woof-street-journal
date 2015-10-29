class WelcomeController < ApplicationController
  def index    
    @user = User.new
    all_posts = Post.order('created_at')
    @first_post = all_posts.last
    @posts = all_posts.take(all_posts.count - 1).sample(6)
  end
end