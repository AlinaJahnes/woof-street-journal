class PostsController < ApplicationControllor
  def new
    @post = Post.new
  end

  def create
    @post = Post.find_by_id(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    if request.path != post_path(@post)
      redirect_to @post, status: :moved_permanently
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])
    render :edit
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    Post.find_by_id(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category_id).merge(user_id: session[:user_id])
  end
end