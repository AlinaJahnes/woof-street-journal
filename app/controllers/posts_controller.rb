class PostsController < ApplicationControllor
  def new
    
  end

  def create
    
  end

  def show
    @post = Post.find(params[:id])
    if request.path != post_path(@post)
      redirect_to @post, status: :moved_permanently
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private
  def post_params
    params.require(:post).permit(:title, :body).merge(user_id: session[:user_id])
  end
end